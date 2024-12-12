library;

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_ios_xcstrings_localizations_strategy/dtos/dtos.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_localizations_strategy.dart';

class GetIosXcstringsLocalizationsStrategy extends GetLocalizationsStrategy {
  const GetIosXcstringsLocalizationsStrategy();

  @override
  Task<List<Localization>> call(String filepath) {
    return runTaskSafely(() async {
      final jsonMap = await jsonFromFile(filepath);
      final dto = LocalizationDto.fromJson(jsonMap);
      //print(dto);
      return dto.toBoList();
    });
  }

  /// Load the json map from the file.
  Future<Map<String, dynamic>> jsonFromFile(String filepath) async {
    final rawContent =
        await File(filepath).toDirectoryCurrentPathRelated().readAsString();
    final jsonContent = jsonDecode(rawContent);
    makeArray(jsonContent);
    return jsonContent as Map<String, dynamic>;
  }

  /// Make some fields of this map to Array.
  ///
  /// - Reason: the `CXStrings` for `ios` files
  /// has a key-value structure for the `strings`,
  /// and `strings.localizations` fields,
  /// but the `Ios:LocalizationDto` expects them to be arrays.
  void makeArray(Map<String, dynamic> map) {
    R? get<R>(Map<String, dynamic> m, String key) {
      if (m.containsKey(key)) {
        return m[key] as R;
      }
      return null;
    }

    List toList(
      dynamic d, {
      String keyName = 'key',
      String valueName = 'value',
    }) {
      if (d is List) {
        return d;
      }
      if (d is Map<String, dynamic>) {
        return d.keys.map((key) {
          final value = d[key];
          if (value is Map<String, dynamic>) {
            return {keyName: key, ...value};
          }
          return {keyName: key, valueName: value};
        }).toList();
      }
      throw UnimplementedError('Cannot convert $d to List for Ios map');
    }

    List? swapList(Map<String, dynamic> m, String key) {
      final temp = get(m, key);
      if (temp == null) {
        return null;
      }
      final list = toList(temp);
      m[key] = list;
      return list;
    }

    final strings = swapList(map, 'strings')!;
    for (final string in strings) {
      final localizations = swapList(string, 'localizations')!;
      for (final localization in localizations) {
        final variations = get(localization, 'variations');
        if (variations != null) {
          final _ = swapList(variations, 'plural');
        }

        final substitutions = swapList(localization, 'substitutions');
        if (substitutions != null) {
          for (final substitution in substitutions) {
            final variations = get(substitution, 'variations');
            if (variations != null) {
              final _ = swapList(variations, 'plural');
            }
          }
        }
      }
    }
    print(jsonEncode(map));
  }
}

extension LocalizationDtoToBo on LocalizationDto {
  List<Localization> toBoList() {
    final Map<String, Localization> localizationsMap = {};

    Localization addItemToLocalization(
      String languageKey, {
      required LocalizationItem item,
    }) {
      final l = localizationsMap.putIfAbsent(languageKey, () {
        return Localization(languageKey: languageKey, items: []);
      });
      final lNew = l.copyWith(items: [...l.items, item]);
      localizationsMap[languageKey] = lNew;
      return lNew;
    }

    strings.forEach((string) {
      string.localizations.forEach((localization) {
        addItemToLocalization(
          localization.languageKey,
          item: localization.toBo(string.key),
        );
      });
    });

    return localizationsMap.values.toList();
  }
}

extension StringLocalizationVariationDtoToBo on StringLocalizationVariationDto {
  StringLocalizationVariationPluralDto defaultPlural() {
    return plurals.firstWhereOrNull((p) => p.key == 'other') ?? plurals.first;
  }

  String toMessage() {
    return defaultPlural().stringUnit.toMessage();
  }

  List<LocalizationItemArgument> toArguments() {
    return defaultPlural().stringUnit.toArguments();
  }
}

extension StringLocalizationUnitDtoToBo on StringLocalizationUnitDto {
  String toMessage() {
    return value;
  }

  List<LocalizationItemArgument> toArguments() {
    final ord = RegExp('(%@|%lld|%lf)').allMatches(value);
    final tag = RegExp(r'%(\d)(\$@|\$lld|\$lf)').allMatches(value);
    int ordIndex = 0;
    final arguments = <LocalizationItemArgument>[
      ...ord.map((m) {
        print('@@@ ord m: ${m.group(0)} in $value');
        return LocalizationItemArgument(
          tag: 'ord:${ordIndex++}',
          type: switch (m.group(1)) {
            '%@' => LocalizationItemArgumentType.string,
            '%lld' => LocalizationItemArgumentType.int,
            '%lf' => LocalizationItemArgumentType.double,
            _ => throw UnimplementedError(),
          },
        );
      }),
      ...tag.map((m) {
        print('@@@ tag m: ${m.group(0)} in $value');
        return LocalizationItemArgument(
          tag: 'tag:${m.group(1)}',
          type: switch (m.group(2)) {
            r'$@' => LocalizationItemArgumentType.string,
            r'$lld' => LocalizationItemArgumentType.int,
            r'$lf' => LocalizationItemArgumentType.double,
            _ => throw UnimplementedError(),
          },
        );
      }),
    ];
    return arguments;
  }
}

extension StringLocalizationSubstitutionsDtoToBo
    on StringLocalizationSubstitutionsDto {
  String? toMessage() {
    return variation?.toMessage();
  }

  List<LocalizationItemArgument> toArguments() {
    return variation?.toArguments() ?? [];
  }
}

extension StringLocalizationDtoToBo on StringLocalizationDto {
  LocalizationItem toBo(String key) {
    final message = stringUnit?.toMessage() ??
        variation?.toMessage() ??
        substitutions?.map((sub) => sub.toMessage()).join(' ');

    final arguments = stringUnit?.toArguments() ??
        variation?.toArguments() ??
        substitutions
            ?.map((sub) {
              print('>>> sub: $sub');
              return sub.toArguments();
            })
            .expand((e) => e)
            .toList() ??
        [];

    final resolvedKey = key.replaceAll(RegExp('(%@|%lld|%lf)'), '');
    print('>>> StringLocalizationDto: $this');
    print('key: $resolvedKey\nmessage: $message\narguments: $arguments');
    return LocalizationItem(
      key: resolvedKey,
      message: message ?? '#Unread#',
      arguments: arguments,
    );
  }
}

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/android/dtos/resource_plural_dto.dart';
import 'package:languagechecker/src/android/dtos/resource_string_dto.dart';
import 'package:languagechecker/src/android/dtos/resources_dto.dart';
import 'package:languagechecker/src/common/common.dart';

part 'localization_dto.freezed.dart';
part 'localization_dto.g.dart';

@freezed
class LocalizationDto with _$LocalizationDto {
  const factory LocalizationDto({
    required ResourcesDto resources,
  }) = _LocalizationDto;

  factory LocalizationDto.fromJson(Map<String, dynamic> json) =>
      _$LocalizationDtoFromJson(json);
}

extension LocalizationDtoToBo on LocalizationDto {
  Localization toBo({required String languageKey}) {
    return Localization(
      languageKey: languageKey,
      items: [
        ...resources.strings.map(resourceStringDto),
        ...resources.plurals.map(resourcePluralDto),
      ],
    );
  }

  LocalizationItem resourceStringDto(ResourceStringDto stringDto) {
    return localizationItem(key: stringDto.name, message: stringDto.message);
  }

  LocalizationItem resourcePluralDto(ResourcePluralDto pluralDto) {
    final message = pluralDto.items.firstWhereOrNull((element) {
          return element.quantity == 'other';
        })?.message ??
        pluralDto.items.first.message;

    return localizationItem(key: pluralDto.name, message: message);
  }

  LocalizationItem localizationItem({
    required String key,
    required String message,
  }) {
    final ord = RegExp('(%s|%d|%f)').allMatches(message);
    final tag = RegExp(r'%(\d)(\$s|\$d|\$f)').allMatches(message);
    int ordIndex = 0;
    final arguments = <LocalizationItemArgument>[
      ...ord.map((m) {
        return LocalizationItemArgument(
          tag: 'ord:${ordIndex++}',
          type: switch (m.group(1)) {
            '%s' => LocalizationItemArgumentType.string,
            '%d' => LocalizationItemArgumentType.int,
            '%f' => LocalizationItemArgumentType.double,
            _ => throw UnimplementedError(),
          },
        );
      }),
      ...tag.map((m) {
        return LocalizationItemArgument(
          tag: 'tag:${m.group(1)}',
          type: switch (m.group(2)) {
            r'$s' => LocalizationItemArgumentType.string,
            r'$d' => LocalizationItemArgumentType.int,
            r'$f' => LocalizationItemArgumentType.double,
            _ => throw UnimplementedError(),
          },
        );
      }),
    ];

    return LocalizationItem(
      key: key,
      message: message,
      arguments: arguments,
    );
  }
}

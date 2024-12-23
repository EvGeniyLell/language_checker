import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_android_xml_localizations_strategy/dtos/dtos.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_android_xml_localizations_strategy/get_android_xml_localizations_strategy.dart';
import 'package:test/test.dart';

void main() {
  const strategy = GetAndroidXmlLocalizationsStrategy();

  Future<void> comparison({
    required (String path, String key) l,
    required (String path, String key) r,
  }) async {
    Future<Localization> localization(String path, String key) async {
      final task = await strategy([path]);
      expect(task.succeeded, isTrue);
      expect(task.data, isA<LocalizationBundle>());
      expect(task.data, hasLength(1));

      final item = task.data.localizations.first;
      expect(item.languageKey, key);

      return item;
    }

    final (lPath, lKey) = l;
    final lLocalization = await localization(lPath, lKey);

    final (rPath, rKey) = r;
    final rLocalization = await localization(rPath, rKey);

    expect(lLocalization.items.length, rLocalization.items.length);
    for (var itemIndex = 0;
        itemIndex < lLocalization.items.length;
        itemIndex += 1) {
      final lItem = lLocalization.items[itemIndex];
      final rItem = rLocalization.items[itemIndex];
      expect(lItem.key, rItem.key);
      // expect(lItem.message, rItem.message);
      expect(lItem.arguments.length, rItem.arguments.length);
      for (var argumentIndex = 0;
          argumentIndex < lItem.arguments.length;
          argumentIndex += 1) {
        final lArgument = lItem.arguments[argumentIndex];
        final rArgument = rItem.arguments[argumentIndex];
        expect(lArgument.position, rArgument.position);
        expect(lArgument.type, rArgument.type);
      }
    }
  }

  group('AndroidLocalizationLoaderUseCase', () {
    test('step by step', () async {
      final jsonResult = await runTaskSafely(() {
        return strategy.jsonFromFile('test/sources/strings_a_en.xml');
      });
      expect(jsonResult.succeeded, isTrue);
      expect(jsonResult.data, isA<Map<String, dynamic>>());

      final dtoResult = await runTaskSafely(() {
        return LocalizationDto.fromJson(jsonResult.data);
      });
      expect(dtoResult.succeeded, isTrue);
      expect(dtoResult.data, isA<LocalizationDto>());
      expect(dtoResult.data.resources.strings, hasLength(2));
      expect(dtoResult.data.resources.plurals, hasLength(2));

      final boResult = await runTaskSafely(() {
        return dtoResult.data.toBo(languageKey: 'en');
      });
      expect(boResult.succeeded, isTrue);
      expect(boResult.data, isA<Localization>());
      expect(boResult.data.items, hasLength(4));
    });

    test('comparison En - Ua', () async {
      await comparison(
        l: ('test/sources/strings_a_en.xml', 'en'),
        r: ('test/sources/strings_a_ua.xml', 'ua'),
      );
    });

    test('comparison En - De', () async {
      await comparison(
        l: ('test/sources/strings_a_en.xml', 'en'),
        r: ('test/sources/strings_a_de.xml', 'de'),
      );
    });
  });
}

import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_android_xml_localizations_strategy/get_android_xml_localizations_strategy.dart';
import 'package:test/test.dart';

void main() {
  const strategy = GetAndroidXmlLocalizationsStrategy();

  group('GetAndroidXmlLocalizationsStrategy', () {
    Future<void> expectAStrategy(
      Task<List<Localization>> task, {
      required dynamic languageKeyMatcher,
    }) async {
      final result = await task;
      expect(result.succeeded, isTrue);
      expect(result.data, isA<List<Localization>>());
      expect(result.data, hasLength(1));

      final localization = result.data.first;
      expect(localization.languageKey, languageKeyMatcher);
      expect(localization.items, hasLength(4));

      expect(localization.items[0].key, 'name_of_feature');
      expect(localization.items[0].arguments, []);

      expect(localization.items[1].key, 'welcome_message');
      expect(localization.items[1].arguments, [
        const LocalizationItemArgument(
          tag: 'tag:1',
          type: LocalizationItemArgumentType.string,
        ),
        const LocalizationItemArgument(
          tag: 'tag:2',
          type: LocalizationItemArgumentType.int,
        ),
      ]);

      expect(localization.items[2].key, 'match_available');
      expect(localization.items[2].arguments, [
        const LocalizationItemArgument(
          tag: 'tag:1',
          type: LocalizationItemArgumentType.string,
        ),
        const LocalizationItemArgument(
          tag: 'tag:2',
          type: LocalizationItemArgumentType.int,
        ),
      ]);

      expect(localization.items[3].key, 'downloaded_files');
      expect(localization.items[3].arguments, [
        const LocalizationItemArgument(
          tag: 'tag:1',
          type: LocalizationItemArgumentType.int,
        ),
      ]);
    }

    test('success EN', () async {
      await expectAStrategy(
        strategy('test/sources/strings_a_en.xml'),
        languageKeyMatcher: 'en',
      );
    });

    test('success DE', () async {
      await expectAStrategy(
        strategy('test/sources/strings_a_de.xml'),
        languageKeyMatcher: 'de',
      );
    });

    test('success UA', () async {
      await expectAStrategy(
        strategy('test/sources/strings_a_ua.xml'),
        languageKeyMatcher: 'ua',
      );
    });
  });
}

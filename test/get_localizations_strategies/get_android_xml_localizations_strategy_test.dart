import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_android_xml_localizations_strategy/get_android_xml_localizations_strategy.dart';
import 'package:test/test.dart';

void main() {
  const strategy = GetAndroidXmlLocalizationsStrategy();

  group('GetAndroidXmlLocalizationsStrategy', () {
    Future<void> expectAStrategy(
      Task<LocalizationBundle> task, {
      required dynamic languageKeyMatcher,
    }) async {
      final result = await task;
      expect(result.succeeded, isTrue);
      expect(result.data, isA<LocalizationBundle>());
      expect(result.data.localizations, hasLength(1));

      final localization = result.data.localizations.first;
      expect(localization.languageKey, languageKeyMatcher);
      expect(localization.items, hasLength(4));

      expect(localization.items[0].key, 'name_of_feature');
      expect(localization.items[0].arguments, []);

      expect(localization.items[1].key, 'welcome_message');
      expect(localization.items[1].arguments, [
        const LocalizationItemArgument(
          position: LocalizationItemArgumentPosition(
            index: 1,
            type: LocalizationItemArgumentPositionType.byTag,
          ),
          type: LocalizationItemArgumentType.string,
        ),
        const LocalizationItemArgument(
          position: LocalizationItemArgumentPosition(
            index: 2,
            type: LocalizationItemArgumentPositionType.byTag,
          ),
          type: LocalizationItemArgumentType.int,
        ),
      ]);

      expect(localization.items[2].key, 'match_available');
      expect(localization.items[2].arguments, [
        const LocalizationItemArgument(
          position: LocalizationItemArgumentPosition(
            index: 1,
            type: LocalizationItemArgumentPositionType.byTag,
          ),
          type: LocalizationItemArgumentType.string,
        ),
        const LocalizationItemArgument(
          position: LocalizationItemArgumentPosition(
            index: 2,
            type: LocalizationItemArgumentPositionType.byTag,
          ),
          type: LocalizationItemArgumentType.int,
        ),
      ]);

      expect(localization.items[3].key, 'downloaded_files');
      expect(localization.items[3].arguments, [
        const LocalizationItemArgument(
          position: LocalizationItemArgumentPosition(
            index: 1,
            type: LocalizationItemArgumentPositionType.byTag,
          ),
          type: LocalizationItemArgumentType.int,
        ),
      ]);
    }

    test('success EN', () async {
      await expectAStrategy(
        strategy(['test/sources/strings_a_en.xml']),
        languageKeyMatcher: 'en',
      );
    });

    test('success DE', () async {
      await expectAStrategy(
        strategy(['test/sources/strings_a_de.xml']),
        languageKeyMatcher: 'de',
      );
    });

    test('success UA', () async {
      await expectAStrategy(
        strategy(['test/sources/strings_a_ua.xml']),
        languageKeyMatcher: 'ua',
      );
    });
  });
}

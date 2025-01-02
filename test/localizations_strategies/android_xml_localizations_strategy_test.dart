import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/localizations_strategies/android_xml/android_xml_localizations_strategy.dart';
import 'package:test/test.dart';

void main() {
  const strategy = AndroidXmlLocalizationsStrategy();

  Future<void> expectSuccessLocalization(
    Localization localization, {
    required dynamic languageKeyMatcher,
  }) async {
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
      expectSuccessLocalization(
        localization,
        languageKeyMatcher: languageKeyMatcher,
      );
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

    Future<void> expectBStrategy(
      Task<LocalizationBundle> task, {
      required List<dynamic> languageKeyMatchers,
    }) async {
      final result = await task;
      expect(result.succeeded, isTrue);
      expect(result.data, isA<LocalizationBundle>());
      expect(result.data.localizations, hasLength(languageKeyMatchers.length));

      for (final languageKeyMatcher in languageKeyMatchers) {
        final matcher = wrapMatcher(languageKeyMatcher);
        final localization = result.data.localizations.firstWhere((l) {
          return matcher.matches(l.languageKey, {});
        });
        expectSuccessLocalization(
          localization,
          languageKeyMatcher: languageKeyMatcher,
        );
      }
    }

    test('success All', () async {
      await expectBStrategy(
        strategy([
          'test/sources/strings_a_en.xml',
          'test/sources/strings_a_de.xml',
          'test/sources/strings_a_ua.xml',
        ]),
        languageKeyMatchers: ['en', 'ua', 'de'],
      );
    });
  });
}

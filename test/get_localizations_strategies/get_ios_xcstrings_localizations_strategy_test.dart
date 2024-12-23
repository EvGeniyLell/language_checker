import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_ios_xcstrings_localizations_strategy/get_ios_xcstrings_localizations_strategy.dart';
import 'package:test/test.dart';

void main() {
  const strategy = GetIosXcstringsLocalizationsStrategy();

  group('GetIosXcstringsLocalizationsStrategy', () {
    void expectAStrategyItem(Localization localization, {required String key}) {
      final item = localization.items.firstWhere((i) => i.key == key);

      switch (key) {
        case 'name_of_feature':
          expect(item.key, 'name_of_feature');
          expect(item.arguments, []);
          break;

        case 'welcome_message':
          expect(item.key, 'welcome_message');
          expect(item.arguments, [
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
          break;

        case 'match_available':
          expect(item.key, 'match_available');
          expect(item.arguments, [
            const LocalizationItemArgument(
              position: LocalizationItemArgumentPosition(
                index: 1,
                type: LocalizationItemArgumentPositionType.inOrder,
              ),
              type: LocalizationItemArgumentType.string,
            ),
            const LocalizationItemArgument(
              position: LocalizationItemArgumentPosition(
                index: 2,
                type: LocalizationItemArgumentPositionType.inOrder,
              ),
              type: LocalizationItemArgumentType.int,
            ),
          ]);

        case 'downloaded_files':
          expect(item.key, 'downloaded_files');
          expect(item.arguments, [
            const LocalizationItemArgument(
              position: LocalizationItemArgumentPosition(
                index: 1,
                type: LocalizationItemArgumentPositionType.byTag,
              ),
              type: LocalizationItemArgumentType.int,
            ),
          ]);
          break;
        default:
          fail('Unexpected key: ${item.key}');
      }
    }

    Future<void> expectAStrategy(Task<LocalizationBundle> task) async {
      final result = await task;
      expect(result.succeeded, isTrue);
      expect(result.data, isA<LocalizationBundle>());
      expect(result.data, hasLength(2));

      for (final localization in result.data.localizations) {
        expect(localization.languageKey, anyOf('en', 'de'));
        expect(localization.items, hasLength(4));
        expectAStrategyItem(localization, key: 'name_of_feature');
        expectAStrategyItem(localization, key: 'welcome_message');
        expectAStrategyItem(localization, key: 'match_available');
        expectAStrategyItem(localization, key: 'downloaded_files');
      }
    }

    test('success feature', () async {
      await expectAStrategy(strategy(['test/sources/FeatureA.json']));
    });

    // test('success DE', () async {
    //   await expectAStrategy(
    //     strategy('test/sources/strings_a_de.xml'),
    //     languageKeyMatcher: 'de',
    //   );
    // });
    //
    // test('success UA', () async {
    //   await expectAStrategy(
    //     strategy('test/sources/strings_a_ua.xml'),
    //     languageKeyMatcher: 'ua',
    //   );
    // });
  });
}

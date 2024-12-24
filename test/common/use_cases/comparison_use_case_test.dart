import 'package:languagechecker/src/common/common.dart';
import 'package:test/test.dart';

import '../mocks.dart';

void main() {
  const useCase = ComparisonUseCase();
  final defBundle = LocalizationBundle.iosXCString(
    path: 'test/source/def.xcstrings',
    localizations: defaultLocalizations,
  );
  final lBundle = LocalizationBundle.iosXCString(
    path: 'test/source/FeatureA.xcstrings',
    localizations: defaultLocalizations,
  );
  final rBundle = LocalizationBundle.androidXml(
    paths: [
      'test/source/strings_a_en.xml',
      'test/source/strings_a_de.xml',
      'test/source/strings_a_ua.xml',
    ],
    localizations: defaultLocalizations,
  );

  group('ComparisonUseCase', () {
    group('Bundles', () {
      test('succeeded: comparison identical bundles', () async {
        final taskResult = await useCase(lBundle, rBundle);
        expect(taskResult.succeeded, isTrue);
      });

      group('failed: emptyBundle', () {
        final tasksMap = {
          'left': () => useCase(
                lBundle.copyWithLocalizations((_) => []),
                rBundle,
              ),
          'right': () => useCase(
                lBundle,
                rBundle.copyWithLocalizations((_) => []),
              ),
          'both': () => useCase(
                lBundle.copyWithLocalizations((_) => []),
                rBundle.copyWithLocalizations((_) => []),
              ),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions;
            expect(exceptions, hasLength(1));
            expect(exceptions.first, isA<EmptyBundleComparisonException>());
          });
        }
      });

      group('failed: mismatchedBundleLength', () {
        final tasksMap = {
          'left': () => useCase(
                lBundle.copyWithLocalizations((l) => l.sublist(2)),
                rBundle,
              ),
          'right': () => useCase(
                lBundle,
                rBundle.copyWithLocalizations((l) => l.sublist(2)),
              ),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions;
            expect(exceptions, hasLength(1));
            expect(
              exceptions.first,
              isA<MismatchedBundleLengthComparisonException>(),
            );
          });
        }
      });

      group('failed: duplicateLocalizationInBundle', () {
        final tasksMap = {
          'left - 1': () => useCase(
                lBundle.copyWithLocalizations((l) => l..[1] = l[0]),
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWithLocalizations((l) => l..[2] = l[0]),
                rBundle,
              ),
          //'right': cannot be tested because it will
          // MissLocalizationInBundleComparisonException or
          // MismatchedBundleLengthComparisonException for the left bundle
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions;
            expect(exceptions, hasLength(1));
            expect(
              exceptions.first,
              isA<DuplicateLocalizationInBundleComparisonException>(),
            );
          });
        }
      });

      group('failed: duplicateLocalizationInBundle - multi', () {
        final tasksMap = {
          'left - 0': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l
                    ..[1] = l[0]
                    ..[2] = l[0];
                }),
                rBundle,
              ),
          'left - 1': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l
                    ..[0] = l[1]
                    ..[2] = l[1];
                }),
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l
                    ..[0] = l[2]
                    ..[1] = l[2];
                }),
                rBundle,
              ),
          //'right': cannot be tested because it will
          // MissLocalizationInBundleComparisonException or
          // MismatchedBundleLengthComparisonException for the left bundle
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions;
            expect(exceptions, hasLength(2));
            expect(
              exceptions,
              everyElement(
                isA<DuplicateLocalizationInBundleComparisonException>(),
              ),
            );
          });
        }
      });

      group('failed: missLocalizationInBundle', () {
        final tasksMap = {
          'left - 0': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l..[0] = l[0].copyWith(languageKey: 'new');
                }),
                rBundle,
              ),
          'left - 1': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l..[1] = l[1].copyWith(languageKey: 'new');
                }),
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l..[2] = l[2].copyWith(languageKey: 'new');
                }),
                rBundle,
              ),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions;
            expect(exceptions, hasLength(1));
            expect(
              exceptions.first,
              isA<MissingLocalizationInBundleComparisonException>(),
            );
          });
        }
      });

      group('failed: missLocalizationInBundle - multi', () {
        final tasksMap = {
          'left - 0': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l
                    ..[0] = l[0].copyWith(languageKey: 'new-0')
                    ..[1] = l[1].copyWith(languageKey: 'new-1');
                }),
                rBundle,
              ),
          'left - 1': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l
                    ..[1] = l[1].copyWith(languageKey: 'new-1')
                    ..[2] = l[2].copyWith(languageKey: 'new-2');
                }),
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWithLocalizations((l) {
                  return l
                    ..[0] = l[0].copyWith(languageKey: 'new-0')
                    ..[2] = l[2].copyWith(languageKey: 'new-2');
                }),
                rBundle,
              ),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions;
            expect(exceptions, hasLength(2));
            expect(
              exceptions,
              everyElement(
                isA<MissingLocalizationInBundleComparisonException>(),
              ),
            );
          });
        }
      });
    });

    group('Localizations', () {
      // skipped: mismatchedLocalizationLanguageKey

      group('failed: mismatchedLocalizationLength', () {
        final emptyBundle = defBundle.copyWithLocalizationItems(
          (localization) => true,
          (items) => [],
        );
        final lessBundle = defBundle.copyWithLocalizationItems(
          (localization) => true,
          (items) => items.sublist(1),
        );
        final moreBundle = defBundle.copyWithLocalizationItems(
          (localization) => true,
          (items) => [...items, items[0].copyWith(key: 'new')],
        );

        final tasksMap = {
          'emptyBundle - left': () => useCase(emptyBundle, rBundle),
          'lessBundle - left': () => useCase(lessBundle, rBundle),
          'moreBundle - left': () => useCase(moreBundle, rBundle),
          'emptyBundle - right': () => useCase(lBundle, emptyBundle),
          'lessBundle - right': () => useCase(lBundle, lessBundle),
          'moreBundle - right': () => useCase(lBundle, moreBundle),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions
                .whereType<MismatchedLocalizationLengthComparisonException>();
            expect(exceptions, hasLength(3));
            expect(
              exceptions,
              everyElement(
                isA<MismatchedLocalizationLengthComparisonException>(),
              ),
            );
          });
        }
      });

      group('failed: missItemInLocalization', () {
        final enBundle = defBundle.copyWithLocalizationItem(
          (localization) => localization.languageKey == 'en',
          (item) => item.key == 'name_of_feature_b',
          (item) => item.copyWith(key: 'new_b'),
        );
        final deBundle = defBundle.copyWithLocalizationItem(
          (localization) => localization.languageKey == 'de',
          (item) => item.key == 'name_of_feature_c',
          (item) => item.copyWith(key: 'new_c'),
        );
        final uaBundle = defBundle.copyWithLocalizationItem(
          (localization) => localization.languageKey == 'ua',
          (item) => item.key == 'name_of_feature_d',
          (item) => item.copyWith(key: 'new_d'),
        );

        final tasksMap = {
          'enBundle - left': () => useCase(enBundle, rBundle),
          'deBundle - left': () => useCase(deBundle, rBundle),
          'uaBundle - left': () => useCase(uaBundle, rBundle),
          'enBundle - right': () => useCase(lBundle, enBundle),
          'deBundle - right': () => useCase(lBundle, deBundle),
          'uaBundle - right': () => useCase(lBundle, uaBundle),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions
                .whereType<MissingItemInLocalizationComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                isA<MissingItemInLocalizationComparisonException>(),
              ),
            );
          });
        }
      });
    });

    group('Items', () {
      // skipped: mismatchedLocalizationItemKey

      group('failed: mismatchedLocalizationItemArgumentsLength', () {
        final enBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'en',
          (item) => item.key == 'name_of_feature_a',
          (args) => args..insert(1, args[1].copyWith()),
        );
        final deBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'de',
          (item) => item.key == 'name_of_feature_b',
          (args) => args..insert(2, args[2].copyWith()),
        );
        final uaBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'ua',
          (item) => item.key == 'name_of_feature_a',
          (args) => args..insert(0, args[0].copyWith()),
        );

        final tasksMap = {
          'enBundle - left': () => useCase(enBundle, rBundle),
          'deBundle - left': () => useCase(deBundle, rBundle),
          'uaBundle - left': () => useCase(uaBundle, rBundle),
          'enBundle - right': () => useCase(lBundle, enBundle),
          'deBundle - right': () => useCase(lBundle, deBundle),
          'uaBundle - right': () => useCase(lBundle, uaBundle),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions
                .whereType<MismatchedArgumentsLengthComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                // ignore: lines_longer_than_80_chars
                isA<MismatchedArgumentsLengthComparisonException>(),
              ),
            );
          });
        }
      });

      group('failed: missArgumentInLocalizationItem', () {
        final enBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'en',
          (item) => item.key == 'name_of_feature_a',
          (args) => args..insert(1, args[1].copyWith()),
        );
        final deBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'de',
          (item) => item.key == 'name_of_feature_b',
          (args) => args..insert(2, args[2].copyWith()),
        );
        final uaBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'ua',
          (item) => item.key == 'name_of_feature_a',
          (args) => args..insert(0, args[0].copyWith()),
        );

        final tasksMap = {
          'enBundle - left': () => useCase(enBundle, rBundle),
          'deBundle - left': () => useCase(deBundle, rBundle),
          'uaBundle - left': () => useCase(uaBundle, rBundle),
          // 'enBundle - right': () => useCase(lBundle, enBundle),
          // 'deBundle - right': () => useCase(lBundle, deBundle),
          // 'uaBundle - right': () => useCase(lBundle, uaBundle),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions
                .whereType<MissingArgumentInItemComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                isA<MissingArgumentInItemComparisonException>(),
              ),
            );
          });
        }
      });

      group('failed: extraArgumentInLocalizationItem', () {
        final enBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'en',
          (item) => item.key == 'name_of_feature_a',
          (args) => args..insert(1, args[1].copyWith()),
        );
        final deBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'de',
          (item) => item.key == 'name_of_feature_b',
          (args) => args..insert(2, args[2].copyWith()),
        );
        final uaBundle = defBundle.copyWithLocalizationItemArguments(
          (localization) => localization.languageKey == 'ua',
          (item) => item.key == 'name_of_feature_a',
          (args) => args..insert(0, args[0].copyWith()),
        );

        final tasksMap = {
          // 'enBundle - left': () => useCase(enBundle, rBundle),
          // 'deBundle - left': () => useCase(deBundle, rBundle),
          // 'uaBundle - left': () => useCase(uaBundle, rBundle),
          'enBundle - right': () => useCase(lBundle, enBundle),
          'deBundle - right': () => useCase(lBundle, deBundle),
          'uaBundle - right': () => useCase(lBundle, uaBundle),
        };

        for (final entry in tasksMap.entries) {
          test(entry.key, () async {
            final taskResult = await entry.value();
            expect(taskResult.failed, isTrue);
            expect(taskResult.exception, isA<CompositeException>());
            final compositeException =
                taskResult.exception as CompositeException;
            final exceptions = compositeException.exceptions
                .whereType<ExtraArgumentInItemComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                isA<ExtraArgumentInItemComparisonException>(),
              ),
            );
          });
        }
      });
    });
  });
}

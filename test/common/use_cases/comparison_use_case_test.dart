import 'package:languagechecker/src/common/common.dart';
import 'package:test/test.dart';

import '../mocks.dart';

void main() {
  const useCase = ComparisonUseCase();

  group('ComparisonUseCase', () {
    late LocalizationBundle lBundle;
    late LocalizationBundle rBundle;

    void resetBundles() {
      lBundle = defaultLocalizationBundle.copyWith();
      rBundle = defaultLocalizationBundle.copyWith();
    }

    setUp(resetBundles);

    group('Bundles', () {
      test('succeeded: comparison identical bundles', () async {
        final taskResult = await useCase(lBundle, rBundle);
        expect(taskResult.succeeded, isTrue);
      });

      group('failed: emptyBundle', () {
        final tasksMap = {
          'left': () => useCase([], rBundle),
          'right': () => useCase(lBundle, []),
          'both': () => useCase([], []),
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
          'left': () => useCase(lBundle.sublist(2), rBundle),
          'right': () => useCase(lBundle, rBundle.sublist(2)),
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
                lBundle.copyWith()..[1] = lBundle[0],
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWith()..[2] = lBundle[0],
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
                lBundle.copyWith()
                  ..[1] = lBundle[0]
                  ..[2] = lBundle[0],
                rBundle,
              ),
          'left - 1': () => useCase(
                lBundle.copyWith()
                  ..[0] = lBundle[1]
                  ..[2] = lBundle[1],
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWith()
                  ..[0] = lBundle[2]
                  ..[1] = lBundle[2],
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
                lBundle.copyWith()
                  ..[0] = lBundle[0].copyWith(languageKey: 'new'),
                rBundle,
              ),
          'left - 1': () => useCase(
                lBundle.copyWith()
                  ..[1] = lBundle[1].copyWith(languageKey: 'new'),
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWith()
                  ..[2] = lBundle[2].copyWith(languageKey: 'new'),
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
              isA<MissLocalizationInBundleComparisonException>(),
            );
          });
        }
      });

      group('failed: missLocalizationInBundle - multi', () {
        final tasksMap = {
          'left - 0': () => useCase(
                lBundle.copyWith()
                  ..[0] = lBundle[0].copyWith(languageKey: 'new-0')
                  ..[1] = lBundle[1].copyWith(languageKey: 'new-1'),
                rBundle,
              ),
          'left - 1': () => useCase(
                lBundle.copyWith()
                  ..[1] = lBundle[1].copyWith(languageKey: 'new-1')
                  ..[2] = lBundle[2].copyWith(languageKey: 'new-2'),
                rBundle,
              ),
          'left - 2': () => useCase(
                lBundle.copyWith()
                  ..[2] = lBundle[2].copyWith(languageKey: 'new-1')
                  ..[0] = lBundle[0].copyWith(languageKey: 'new-0'),
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
                isA<MissLocalizationInBundleComparisonException>(),
              ),
            );
          });
        }
      });
    });

    group('Localizations', () {
      // skipped: mismatchedLocalizationLanguageKey

      group('failed: mismatchedLocalizationLength', () {
        final emptyBundle = defaultLocalizationBundle.copyWith((localization) {
          return localization.copyWith(items: []);
        });
        final lessBundle = defaultLocalizationBundle.copyWith((localization) {
          return localization.copyWith(
            items: localization.items.sublist(1),
          );
        });
        final moreBundle = defaultLocalizationBundle.copyWith((localization) {
          return localization.copyWith(
            items: [
              ...localization.items,
              localization.items.first.copyWith(key: 'new'),
            ],
          );
        });

        final tasksMap = {
          'emptyBundle - left': () => useCase(emptyBundle, rBundle),
          'lessBundle - left': () => useCase(lessBundle, rBundle),
          'moreBundle - left': () => useCase(moreBundle, rBundle),
          'emptyBundle - right': () => useCase(emptyBundle, rBundle),
          'lessBundle - right': () => useCase(lessBundle, rBundle),
          'moreBundle - right': () => useCase(moreBundle, rBundle),
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
        final enBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'en') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_b') {
                  return item.copyWith(key: 'new_b');
                }
                return item;
              }),
            );
          }
          return localization;
        });
        final deBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'de') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_c') {
                  return item.copyWith(key: 'new_c');
                }
                return item;
              }),
            );
          }
          return localization;
        });
        final uaBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'ua') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_d') {
                  return item.copyWith(key: 'new_d');
                }
                return item;
              }),
            );
          }
          return localization;
        });

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
                .whereType<MissItemInLocalizationComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                isA<MissItemInLocalizationComparisonException>(),
              ),
            );
          });
        }
      });
    });

    group('Items', () {
      // skipped: mismatchedLocalizationItemKey

      group('failed: mismatchedLocalizationItemArgumentsLength', () {
        final enBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'en') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_a') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(1, item.arguments[1].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });

        final deBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'de') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_b') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(2, item.arguments[2].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });
        final uaBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'ua') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_a') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(0, item.arguments[0].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });

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
            final exceptions = compositeException.exceptions.whereType<
                MismatchedLocalizationItemArgumentsLengthComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                // ignore: lines_longer_than_80_chars
                isA<MismatchedLocalizationItemArgumentsLengthComparisonException>(),
              ),
            );
          });
        }
      });

      group('failed: missArgumentInLocalizationItem', () {
        final enBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'en') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_a') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(1, item.arguments[1].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });

        final deBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'de') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_b') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(2, item.arguments[2].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });
        final uaBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'ua') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_a') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(0, item.arguments[0].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });

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
                .whereType<MissArgumentInLocalizationItemComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                isA<MissArgumentInLocalizationItemComparisonException>(),
              ),
            );
          });
        }
      });

      group('failed: extraArgumentInLocalizationItem', () {
        final enBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'en') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_a') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(1, item.arguments[1].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });

        final deBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'de') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_b') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(2, item.arguments[2].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });
        final uaBundle = defaultLocalizationBundle.copyWith((localization) {
          if (localization.languageKey == 'ua') {
            return localization.copyWith(
              items: localization.items.copyWith((item) {
                if (item.key == 'name_of_feature_a') {
                  return item.copyWith(
                    arguments: item.arguments.copyWith()
                      ..insert(0, item.arguments[0].copyWith()),
                  );
                }
                return item;
              }),
            );
          }
          return localization;
        });

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
            final exceptions = compositeException.exceptions.whereType<
                ExtraArgumentInLocalizationItemComparisonException>();
            expect(exceptions, hasLength(1));
            expect(
              exceptions,
              everyElement(
                isA<ExtraArgumentInLocalizationItemComparisonException>(),
              ),
            );
          });
        }
      });
    });
  });
}

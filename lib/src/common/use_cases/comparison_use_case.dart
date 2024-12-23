import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/business_objects/business_objects.dart';
import 'package:languagechecker/src/common/exceptions/exceptions.dart';
import 'package:languagechecker/src/common/utils/task.dart';

class ComparisonUseCase {
  const ComparisonUseCase();

  Task<void> call(LocalizationBundle lBundle, LocalizationBundle rBundle) {
    return runTaskSafely(() async {
      final result = BundleComparer(lBundle, rBundle)();
      if (result.isNotEmpty) {
        throw CompositeException(result);
      }
    });
  }
}

@visibleForTesting
// ignore: one_member_abstracts
abstract class Comparer {
  const Comparer();

  List<ComparisonException> call();
}

@visibleForTesting
class BundleComparer extends Comparer {
  final LocalizationBundle lBundle;
  final LocalizationBundle rBundle;

  const BundleComparer(this.lBundle, this.rBundle);

  @override
  List<ComparisonException> call() {
    final exceptions = <ComparisonException>[];

    if (lBundle.isEmpty) {
      return exceptions..add(ComparisonException.emptyBundle(lBundle));
    }

    if (rBundle.isEmpty) {
      return exceptions..add(ComparisonException.emptyBundle(rBundle));
    }

    if (lBundle.length != rBundle.length) {
      return exceptions
        ..add(ComparisonException.mismatchedBundleLength(lBundle, rBundle));
    }

    final languageKeys = <String>{};
    for (final lLocalization in lBundle) {
      if (languageKeys.contains(lLocalization.languageKey)) {
        exceptions.add(
          ComparisonException.duplicateLocalizationInBundle(
            lBundle,
            lLocalization,
          ),
        );
        continue;
      }
      languageKeys.add(lLocalization.languageKey);

      final rLocalization = rBundle.firstWhereOrNull((r) {
        return r.languageKey == lLocalization.languageKey;
      });
      if (rLocalization == null) {
        exceptions.add(
          ComparisonException.missLocalizationInBundle(rBundle, lLocalization),
        );
      } else {
        exceptions.addAll(
          LocalizationComparer(this, lLocalization, rLocalization)(),
        );
      }
    }

    return exceptions;
  }
}

@visibleForTesting
class LocalizationComparer extends Comparer {
  final BundleComparer bundleComparer;
  final Localization lLocalization;
  final Localization rLocalization;

  const LocalizationComparer(
    this.bundleComparer,
    this.lLocalization,
    this.rLocalization,
  );

  @override
  List<ComparisonException> call() {
    final exceptions = <ComparisonException>[];

    if (lLocalization.languageKey != rLocalization.languageKey) {
      return exceptions
        ..add(
          ComparisonException.mismatchedLocalizationLanguageKey(
            bundleComparer.lBundle,
            lLocalization,
            rLocalization,
          ),
        );
    }

    if (lLocalization.items.length != rLocalization.items.length) {
      exceptions.add(
        ComparisonException.mismatchedLocalizationLength(
          bundleComparer.lBundle,
          lLocalization,
          rLocalization,
        ),
      );
    }

    for (final lItem in lLocalization.items) {
      final rItem = rLocalization.items.firstWhereOrNull((r) {
        return r.key == lItem.key;
      });
      if (rItem == null) {
        exceptions.add(
          ComparisonException.missItemInLocalization(
            bundleComparer.lBundle,
            lLocalization,
            lItem,
          ),
        );
      } else {
        exceptions.addAll(
          ItemComparer(this, lItem, rItem)(),
        );
      }
    }

    return exceptions;
  }
}

@visibleForTesting
class ItemComparer extends Comparer {
  final LocalizationComparer localizationComparer;
  final LocalizationItem lItem;
  final LocalizationItem rItem;

  const ItemComparer(
    this.localizationComparer,
    this.lItem,
    this.rItem,
  );

  @override
  List<ComparisonException> call() {
    final exceptions = <ComparisonException>[];

    if (lItem.key != rItem.key) {
      return exceptions
        ..add(
          ComparisonException.mismatchedLocalizationItemKey(
            localizationComparer.bundleComparer.lBundle,
            localizationComparer.lLocalization,
            lItem,
            rItem,
          ),
        );
    }

    if (lItem.arguments.length != rItem.arguments.length) {
      exceptions.add(
        ComparisonException.mismatchedLocalizationItemArgumentsLength(
          localizationComparer.bundleComparer.lBundle,
          localizationComparer.lLocalization,
          lItem,
          rItem,
        ),
      );
    }

    final rUnusedArguments = <LocalizationItemArgument>[...rItem.arguments];
    for (final lArg in lItem.arguments) {
      final rArg = rItem.arguments.firstWhereOrNull((r) {
        final match = lArg.position == r.position &&
            lArg.type == r.type &&
            rUnusedArguments.contains(r);
        if (match) {
          rUnusedArguments.remove(r);
        }
        return match;
      });
      if (rArg == null) {
        exceptions.add(
          ComparisonException.missArgumentInLocalizationItem(
            localizationComparer.bundleComparer.lBundle,
            localizationComparer.lLocalization,
            lItem,
            lArg,
          ),
        );
      }
    }

    for (final rArg in rUnusedArguments) {
      exceptions.add(
        ComparisonException.extraArgumentInLocalizationItem(
          localizationComparer.bundleComparer.lBundle,
          localizationComparer.lLocalization,
          lItem,
          rArg,
        ),
      );
    }

    return exceptions;
  }
}

import 'package:languagechecker/src/common/business_objects/business_objects.dart';
import 'package:languagechecker/src/common/exceptions/app_exception.dart';
import 'package:languagechecker/src/common/utils/has_friendly_name.dart';

class ComparisonException implements AppException {
  final String message;

  const ComparisonException(this.message);

  // --- Bundle ---

  factory ComparisonException.emptyBundle(
    LocalizationBundle bundle,
  ) = EmptyBundleComparisonException;

  factory ComparisonException.mismatchedBundleLength(
    LocalizationBundle bundle,
    LocalizationBundle otherBundle,
  ) = MismatchedBundleLengthComparisonException;

  factory ComparisonException.duplicateLocalizationInBundle(
    LocalizationBundle bundle,
    Localization localization,
  ) = DuplicateLocalizationInBundleComparisonException;

  factory ComparisonException.missingLocalizationInBundle(
    LocalizationBundle bundle,
    Localization localization,
  ) = MissingLocalizationInBundleComparisonException;

  // --- Localization ---

  factory ComparisonException.mismatchedLocalizationLanguageKey(
    LocalizationBundle bundle,
    Localization localization,
    Localization otherLocalization,
  ) = MismatchedLocalizationLanguageKeyComparisonException;

  factory ComparisonException.mismatchedLocalizationLength(
    LocalizationBundle bundle,
    Localization localization,
    Localization otherLocalization,
  ) = MismatchedLocalizationLengthComparisonException;

  factory ComparisonException.missingItemInLocalization(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
  ) = MissingItemInLocalizationComparisonException;

  // --- LocalizationItem ---

  factory ComparisonException.mismatchedItemKey(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItem otherItem,
  ) = MismatchedItemKeyComparisonException;

  factory ComparisonException.mismatchedArgumentsLength(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItem otherItem,
  ) = MismatchedArgumentsLengthComparisonException;

  factory ComparisonException.missingArgumentInItem(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItemArgument argument,
  ) = MissingArgumentInItemComparisonException;

  factory ComparisonException.extraArgumentInItem(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItemArgument argument,
  ) = ExtraArgumentInItemComparisonException;

  @override
  String toString() {
    // ignore: no_runtimeType_toString
    return '$runtimeType: $message';
  }
}

extension on List<HasFriendlyName> {
  String toExtensionPath() => map((item) => item.friendlyName).join(' -> ');
}

// --- Bundle ---

class EmptyBundleComparisonException extends ComparisonException {
  final LocalizationBundle bundle;

  EmptyBundleComparisonException(this.bundle)
      : super(
          'The bundle has no localizations: '
          '${[bundle].toExtensionPath()}.',
        );
}

class MismatchedBundleLengthComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final LocalizationBundle otherBundle;

  MismatchedBundleLengthComparisonException(
    this.bundle,
    this.otherBundle,
  ) : super(
          'The bundles has different number of localizations, '
          '${bundle.localizations.length} vs '
          '${otherBundle.localizations.length} accordingly: '
          '${[bundle].toExtensionPath()}.',
        );
}

class DuplicateLocalizationInBundleComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;

  DuplicateLocalizationInBundleComparisonException(
    this.bundle,
    this.localization,
  ) : super(
          'The localization is duplicated: '
          '${[localization, bundle].toExtensionPath()}.',
        );
}

class MissingLocalizationInBundleComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;

  MissingLocalizationInBundleComparisonException(
    this.bundle,
    this.localization,
  ) : super(
          'The localization is missing: '
          '${[localization, bundle].toExtensionPath()}.',
        );
}

// --- Localization ---

class MismatchedLocalizationLanguageKeyComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final Localization otherLocalization;

  MismatchedLocalizationLanguageKeyComparisonException(
    this.bundle,
    this.localization,
    this.otherLocalization,
  ) : super(
          'The localization has different language keys, '
          '${localization.languageKey} vs '
          '${otherLocalization.languageKey} accordingly: '
          '${[localization, bundle].toExtensionPath()}.',
        );
}

class MismatchedLocalizationLengthComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final Localization otherLocalization;

  MismatchedLocalizationLengthComparisonException(
    this.bundle,
    this.localization,
    this.otherLocalization,
  ) : super(
          'The localizations has different number of items, '
          '${localization.items.length} vs '
          '${otherLocalization.items.length} accordingly: '
          '${[localization, bundle].toExtensionPath()}.',
        );
}

// --- LocalizationItem ---

class MissingItemInLocalizationComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;

  MissingItemInLocalizationComparisonException(
    this.bundle,
    this.localization,
    this.item,
  ) : super(
          'The item is missing: '
          '${[item, localization, bundle].toExtensionPath()}.',
        );
}

class MismatchedItemKeyComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItem otherItem;

  MismatchedItemKeyComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.otherItem,
  ) : super(
          'The item has different keys, '
          '${item.key} vs '
          '${otherItem.key} accordingly: '
          '${[item, localization, bundle].toExtensionPath()}.',
        );
}

class MismatchedArgumentsLengthComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItem otherItem;

  MismatchedArgumentsLengthComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.otherItem,
  ) : super(
          'The item has different number of arguments, '
          '${item.arguments.length} vs '
          '${otherItem.arguments.length} accordingly: '
          '${[item, localization, bundle].toExtensionPath()}.',
        );
}

class MissingArgumentInItemComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItemArgument argument;

  MissingArgumentInItemComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.argument,
  ) : super(
          'The argument is missing: '
          '${[argument, item, localization, bundle].toExtensionPath()}.',
        );
}

class ExtraArgumentInItemComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItemArgument argument;

  ExtraArgumentInItemComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.argument,
  ) : super(
          'The argument is extra: '
          '${[argument, item, localization, bundle].toExtensionPath()}.',
        );
}

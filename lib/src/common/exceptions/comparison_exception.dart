import 'package:languagechecker/src/common/business_objects/business_objects.dart';
import 'package:languagechecker/src/common/exceptions/app_exception.dart';

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

  factory ComparisonException.missLocalizationInBundle(
    LocalizationBundle bundle,
    Localization localization,
  ) = MissLocalizationInBundleComparisonException;

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

  factory ComparisonException.missItemInLocalization(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
  ) = MissItemInLocalizationComparisonException;

  // --- LocalizationItem ---

  factory ComparisonException.mismatchedLocalizationItemKey(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItem otherItem,
  ) = MismatchedLocalizationItemKeyComparisonException;

  factory ComparisonException.mismatchedLocalizationItemArgumentsLength(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItem otherItem,
  ) = MismatchedLocalizationItemArgumentsLengthComparisonException;

  factory ComparisonException.missArgumentInLocalizationItem(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItemArgument argument,
  ) = MissArgumentInLocalizationItemComparisonException;

  factory ComparisonException.extraArgumentInLocalizationItem(
    LocalizationBundle bundle,
    Localization localization,
    LocalizationItem item,
    LocalizationItemArgument argument,
  ) = ExtraArgumentInLocalizationItemComparisonException;

  @override
  String toString() {
    // ignore: no_runtimeType_toString
    return '$runtimeType: $message';
  }
}

// TODO(any): implement bundle name in message

// --- Bundle ---

class EmptyBundleComparisonException extends ComparisonException {
  final LocalizationBundle bundle;

  EmptyBundleComparisonException(this.bundle)
      : super(
          'The number of localizations is zero. '
          'For ${bundle.friendlyName} bundle.',
        );
}

class MismatchedBundleLengthComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final LocalizationBundle otherBundle;

  MismatchedBundleLengthComparisonException(
    this.bundle,
    this.otherBundle,
  ) : super(
          'The number of localizations is different. '
          '${bundle.length} vs '
          '${otherBundle.length} accordingly. '
          'For "${bundle.friendlyName}" bundle.',
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
          'The "${localization.languageKey}" localization is duplicated. '
          'For "${bundle.friendlyName}" bundle.',
        );
}

class MissLocalizationInBundleComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;

  MissLocalizationInBundleComparisonException(
    this.bundle,
    this.localization,
  ) : super(
          'The "${localization.languageKey}" localization is missing. '
          'For "${bundle.friendlyName}" bundle.',
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
          'The language keys of localizations are different, '
          '${localization.languageKey} vs '
          '${otherLocalization.languageKey} accordingly. '
          'For "${bundle.friendlyName}" bundle.',
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
          'The number of items in localizations is different, '
          '${localization.items.length} vs '
          '${otherLocalization.items.length} accordingly. '
          'For "${localization.languageKey}" localization '
          'in "${bundle.friendlyName}" bundle.',
        );
}

// --- LocalizationItem ---

class MissItemInLocalizationComparisonException extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;

  MissItemInLocalizationComparisonException(
    this.bundle,
    this.localization,
    this.item,
  ) : super(
          'The "${item.key}" key of item is missing. '
          'For "${localization.languageKey}" localization '
          'in "${bundle.friendlyName}" bundle.',
        );
}

class MismatchedLocalizationItemKeyComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItem otherItem;

  MismatchedLocalizationItemKeyComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.otherItem,
  ) : super(
          'The keys of localization items are different, '
          '${item.key} vs '
          '${otherItem.key} accordingly. '
          'For "${localization.languageKey}" localization '
          'in "${bundle.friendlyName}" bundle.',
        );
}

class MismatchedLocalizationItemArgumentsLengthComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItem otherItem;

  MismatchedLocalizationItemArgumentsLengthComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.otherItem,
  ) : super(
          'The number of arguments in localization items are different, '
          '${item.arguments.length} vs '
          '${otherItem.arguments.length} accordingly. '
          'For "${item.key}" item '
          'in "${localization.languageKey}" localization '
          'in "${bundle.friendlyName}" bundle.',
        );
}

class MissArgumentInLocalizationItemComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItemArgument argument;

  MissArgumentInLocalizationItemComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.argument,
  ) : super(
          'The "${argument.friendlyName}" key of item is missing. '
          'For "${item.key}" localization '
          'in "${localization.languageKey}" localization '
          'in "${bundle.friendlyName}" bundle.',
        );
}

class ExtraArgumentInLocalizationItemComparisonException
    extends ComparisonException {
  final LocalizationBundle bundle;
  final Localization localization;
  final LocalizationItem item;
  final LocalizationItemArgument argument;

  ExtraArgumentInLocalizationItemComparisonException(
    this.bundle,
    this.localization,
    this.item,
    this.argument,
  ) : super(
          'The "${argument.friendlyName}" key of item is extra. '
          'For "${item.key}" localization '
          'in "${localization.languageKey}" localization '
          'in "${bundle.friendlyName}" bundle.',
        );
}

extension LocalizationBundleCopyExtension on LocalizationBundle {
  String get friendlyName => 'BundleName';
}

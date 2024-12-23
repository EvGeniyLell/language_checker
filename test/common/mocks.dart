import 'package:languagechecker/src/common/common.dart';

// --- LocalizationItem --------------------------------------------------------

final aEnLocalizationItem = LocalizationItem(
  key: 'name_of_feature_a',
  message: 'Name of feature - A',
  arguments: [
    LocalizationItemArgument.string(LocalizationItemArgumentPosition.byTag(1)),
    LocalizationItemArgument.int(LocalizationItemArgumentPosition.byTag(2)),
    LocalizationItemArgument.double(LocalizationItemArgumentPosition.byTag(3)),
  ],
);

final bEnLocalizationItem = LocalizationItem(
  key: 'name_of_feature_b',
  message: 'Name of feature - B',
  arguments: [
    LocalizationItemArgument.string(LocalizationItemArgumentPosition.byTag(1)),
    LocalizationItemArgument.int(LocalizationItemArgumentPosition.inOrder(1)),
    LocalizationItemArgument.double(LocalizationItemArgumentPosition.byTag(3)),
  ],
);

const cEnLocalizationItem = LocalizationItem(
  key: 'name_of_feature_c',
  message: 'Name of feature - C',
  arguments: [],
);

final dEnLocalizationItem = LocalizationItem(
  key: 'name_of_feature_d',
  message: 'Name of feature - D',
  arguments: [
    LocalizationItemArgument.string(
      LocalizationItemArgumentPosition.inOrder(1),
    ),
  ],
);

// --- Localization ------------------------------------------------------------

final enLocalization = Localization(
  languageKey: 'en',
  items: [
    aEnLocalizationItem,
    bEnLocalizationItem,
    cEnLocalizationItem,
    dEnLocalizationItem,
  ],
);

final deLocalization = Localization(
  languageKey: 'de',
  items: [
    aEnLocalizationItem.copyWith(message: 'Name of feature - A (DE)'),
    bEnLocalizationItem.copyWith(message: 'Name of feature - B (DE)'),
    cEnLocalizationItem.copyWith(message: 'Name of feature - C (DE)'),
    dEnLocalizationItem.copyWith(message: 'Name of feature - D (DE)'),
  ],
);

final uaLocalization = Localization(
  languageKey: 'ua',
  items: [
    aEnLocalizationItem.copyWith(message: 'Name of feature - A (UA)'),
    bEnLocalizationItem.copyWith(message: 'Name of feature - B (UA)'),
    cEnLocalizationItem.copyWith(message: 'Name of feature - C (UA)'),
    dEnLocalizationItem.copyWith(message: 'Name of feature - D (UA)'),
  ],
);

final defaultLocalizationBundle = [
  enLocalization,
  deLocalization,
  uaLocalization,
];

extension LocalizationBundleCopyExtension on LocalizationBundle {
  LocalizationBundle copyWith([
    Localization Function(Localization)? transform,
  ]) {
    return map((e) => (transform?.call(e) ?? e).copyWith()).toList();
  }
}

extension LocalizationItemCopyExtension on List<LocalizationItem> {
  List<LocalizationItem> copyWith([
    LocalizationItem Function(LocalizationItem)? transform,
  ]) {
    return map((e) => (transform?.call(e) ?? e).copyWith()).toList();
  }
}

extension LocalizationItemArgumentCopyExtension
    on List<LocalizationItemArgument> {
  List<LocalizationItemArgument> copyWith([
    LocalizationItemArgument Function(LocalizationItemArgument)? transform,
  ]) {
    return map((e) => (transform?.call(e) ?? e).copyWith()).toList();
  }
}

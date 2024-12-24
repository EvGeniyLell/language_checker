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

final defaultLocalizations = [
  enLocalization,
  deLocalization,
  uaLocalization,
];

extension LocalizationCopyExtension on List<Localization> {
  List<Localization> copyWith([
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

extension LocalizationBundleDeepCopyExtension on LocalizationBundle {
  LocalizationBundle copyWithLocalizations(
    List<Localization> Function(List<Localization>) transform,
  ) {
    final l = transform(localizations.copyWith());
    return copyWith(localizations: l);
  }

  LocalizationBundle copyWithLocalizationItems(
    bool Function(Localization) localizationFilter,
    List<LocalizationItem> Function(List<LocalizationItem>) transform,
  ) {
    final l = localizations.map((l) {
      return localizationFilter(l)
          ? l.copyWith(items: transform(l.items.copyWith()))
          : l.copyWith();
    }).toList();
    return copyWith(localizations: l);
  }

  LocalizationBundle copyWithLocalizationItem(
    bool Function(Localization) localizationFilter,
    bool Function(LocalizationItem) itemFilter,
    LocalizationItem Function(LocalizationItem) transform,
  ) {
    final newLocalizations = localizations.map((localization) {
      return localizationFilter(localization)
          ? localization.copyWith(
              items: localization.items.map((item) {
                return itemFilter(item)
                    ? transform(item.copyWith())
                    : item.copyWith();
              }).toList(),
            )
          : localization.copyWith();
    }).toList();
    return copyWith(localizations: newLocalizations);
  }

  LocalizationBundle copyWithLocalizationItemArguments(
    bool Function(Localization) localizationFilter,
    bool Function(LocalizationItem) itemFilter,
    List<LocalizationItemArgument> Function(List<LocalizationItemArgument>)
        transform,
  ) {
    final newLocalizations = localizations.map((localization) {
      return localizationFilter(localization)
          ? localization.copyWith(
              items: localization.items.map((item) {
                return itemFilter(item)
                    ? item.copyWith(
                        arguments: transform(item.arguments.copyWith()),
                      )
                    : item.copyWith();
              }).toList(),
            )
          : localization.copyWith();
    }).toList();
    return copyWith(localizations: newLocalizations);
  }
// LocalizationBundle copyWithLocalizationByIndex(
//   int index,
//   Localization Function(Localization) transform,
// ) {
//   final l = localizations.copyWith();
//   l[index] = transform(l[index]);
//   return copyWith(localizations: l);
// }
}

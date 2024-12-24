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

// --- Copy With ---------------------------------------------------------------

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

  LocalizationBundle copyWithLocalization(
    bool Function(Localization) localizationFilter,
    Localization Function(Localization) transform,
  ) {
    return copyWithLocalizations((localizations) {
      return localizations.map((l) {
        return localizationFilter(l) ? transform(l) : l;
      }).toList();
    });
  }

  LocalizationBundle copyWithLocalizationItems(
    bool Function(Localization) localizationFilter,
    List<LocalizationItem> Function(List<LocalizationItem>) transform,
  ) {
    return copyWithLocalization(
      localizationFilter,
      (l) => l.copyWith(items: transform(l.items.copyWith())),
    );
  }

  LocalizationBundle copyWithLocalizationItem(
    bool Function(Localization) localizationFilter,
    bool Function(LocalizationItem) itemFilter,
    LocalizationItem Function(LocalizationItem) transform,
  ) {
    return copyWithLocalizationItems(
      localizationFilter,
      (items) => items.map((item) {
        return itemFilter(item) ? transform(item) : item;
      }).toList(),
    );
  }

  LocalizationBundle copyWithLocalizationItemArguments(
    bool Function(Localization) localizationFilter,
    bool Function(LocalizationItem) itemFilter,
    List<LocalizationItemArgument> Function(List<LocalizationItemArgument>)
        transform,
  ) {
    return copyWithLocalizationItem(
      localizationFilter,
      itemFilter,
      (item) => item.copyWith(arguments: transform(item.arguments.copyWith())),
    );
  }

  LocalizationBundle copyWithLocalizationItemArgument(
    bool Function(Localization) localizationFilter,
    bool Function(LocalizationItem) itemFilter,
    bool Function(LocalizationItemArgument) argumentFilter,
    LocalizationItemArgument Function(LocalizationItemArgument) transform,
  ) {
    return copyWithLocalizationItemArguments(
      localizationFilter,
      itemFilter,
      (arguments) => arguments.map((argument) {
        return argumentFilter(argument) ? transform(argument) : argument;
      }).toList(),
    );
  }
}

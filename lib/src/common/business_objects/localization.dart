import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/business_objects/localization_item.dart';

part 'localization.freezed.dart';
part 'localization.g.dart';

typedef LocalizationBundle = List<Localization>;

@freezed
class Localization with _$Localization {
  const factory Localization({
    required String languageKey,
    required List<LocalizationItem> items,
  }) = _Localization;

  factory Localization.fromJson(Map<String, dynamic> json) =>
      _$LocalizationFromJson(json);
}

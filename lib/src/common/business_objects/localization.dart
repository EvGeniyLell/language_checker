import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/business_objects/localization_item.dart';
import 'package:languagechecker/src/common/utils/has_friendly_name.dart';

part 'localization.freezed.dart';
part 'localization.g.dart';

@freezed
class Localization with _$Localization implements HasFriendlyName {
  const factory Localization({
    required String languageKey,
    required List<LocalizationItem> items,
  }) = _Localization;

  const Localization._();

  factory Localization.fromJson(Map<String, dynamic> json) =>
      _$LocalizationFromJson(json);

  @override
  String get friendlyName => languageKey;
}

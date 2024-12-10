import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/business_objects/localization_item_argument.dart';

part 'localization_item.freezed.dart';
part 'localization_item.g.dart';

@freezed
class LocalizationItem with _$LocalizationItem {
  const factory LocalizationItem({
    required String key,
    required String message,
    required List<LocalizationItemArgument> arguments,
  }) = _LocalizationItem;

  factory LocalizationItem.fromJson(Map<String, dynamic> json) =>
      _$LocalizationItemFromJson(json);
}

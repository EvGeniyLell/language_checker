import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/business_objects/localization_item_argument.dart';
import 'package:languagechecker/src/common/utils/has_friendly_name.dart';

part 'localization_item.freezed.dart';
part 'localization_item.g.dart';

@freezed
class LocalizationItem with _$LocalizationItem implements HasFriendlyName {
  const factory LocalizationItem({
    required String key,
    required String message,
    required List<LocalizationItemArgument> arguments,
  }) = _LocalizationItem;

  const LocalizationItem._();

  factory LocalizationItem.fromJson(Map<String, dynamic> json) =>
      _$LocalizationItemFromJson(json);

  @override
  String get friendlyName => key;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_item_argument.freezed.dart';
part 'localization_item_argument.g.dart';

@freezed
class LocalizationItemArgument with _$LocalizationItemArgument {
  const factory LocalizationItemArgument({
    required LocalizationItemArgumentPosition position,
    required LocalizationItemArgumentType type,
  }) = _LocalizationItemArgument;

  factory LocalizationItemArgument.fromJson(Map<String, dynamic> json) =>
      _$LocalizationItemArgumentFromJson(json);
}

enum LocalizationItemArgumentType {
  string,
  int,
  double,
}

@freezed
class LocalizationItemArgumentPosition with _$LocalizationItemArgumentPosition {
  const factory LocalizationItemArgumentPosition({
    required int index,
    required LocalizationItemArgumentPositionType type,
  }) = _LocalizationItemArgumentPosition;

  factory LocalizationItemArgumentPosition.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LocalizationItemArgumentPositionFromJson(json);
}

enum LocalizationItemArgumentPositionType {
  byTag,
  inOrder,
}

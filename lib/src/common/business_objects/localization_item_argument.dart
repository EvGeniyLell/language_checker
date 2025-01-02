import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/utils/has_friendly_name.dart';

part 'localization_item_argument.freezed.dart';
part 'localization_item_argument.g.dart';

@freezed
class LocalizationItemArgument
    with _$LocalizationItemArgument
    implements HasFriendlyName {
  const factory LocalizationItemArgument({
    required LocalizationItemArgumentPosition position,
    required LocalizationItemArgumentType type,
  }) = _LocalizationItemArgument;

  const LocalizationItemArgument._();

  factory LocalizationItemArgument.fromJson(Map<String, dynamic> json) =>
      _$LocalizationItemArgumentFromJson(json);

  factory LocalizationItemArgument.position({
    required int positionIndex,
    required LocalizationItemArgumentPositionType positionType,
    required LocalizationItemArgumentType type,
  }) {
    return LocalizationItemArgument(
      position: LocalizationItemArgumentPosition(
        index: positionIndex,
        type: positionType,
      ),
      type: type,
    );
  }

  factory LocalizationItemArgument.string(
    LocalizationItemArgumentPosition position,
  ) {
    return LocalizationItemArgument(
      position: position,
      type: LocalizationItemArgumentType.string,
    );
  }

  factory LocalizationItemArgument.int(
    LocalizationItemArgumentPosition position,
  ) {
    return LocalizationItemArgument(
      position: position,
      type: LocalizationItemArgumentType.int,
    );
  }

  factory LocalizationItemArgument.double(
    LocalizationItemArgumentPosition position,
  ) {
    return LocalizationItemArgument(
      position: position,
      type: LocalizationItemArgumentType.double,
    );
  }

  @override
  String get friendlyName => '${type.friendlyName}:${position.friendlyName}';
}

enum LocalizationItemArgumentType {
  string,
  int,
  double,
}

extension LocalizationItemArgumentTypeExtension
    on LocalizationItemArgumentType {
  String get friendlyName {
    switch (this) {
      case LocalizationItemArgumentType.string:
        return 'String';
      case LocalizationItemArgumentType.int:
        return 'Int';
      case LocalizationItemArgumentType.double:
        return 'Double';
    }
  }
}

@freezed
class LocalizationItemArgumentPosition
    with _$LocalizationItemArgumentPosition
    implements HasFriendlyName {
  const factory LocalizationItemArgumentPosition({
    required int index,
    required LocalizationItemArgumentPositionType type,
  }) = _LocalizationItemArgumentPosition;

  const LocalizationItemArgumentPosition._();

  factory LocalizationItemArgumentPosition.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LocalizationItemArgumentPositionFromJson(json);

  factory LocalizationItemArgumentPosition.byTag(int index) {
    return LocalizationItemArgumentPosition(
      index: index,
      type: LocalizationItemArgumentPositionType.byTag,
    );
  }

  factory LocalizationItemArgumentPosition.inOrder(int index) {
    return LocalizationItemArgumentPosition(
      index: index,
      type: LocalizationItemArgumentPositionType.inOrder,
    );
  }

  @override
  String get friendlyName => '${type.friendlyName}[$index]';
}

enum LocalizationItemArgumentPositionType {
  byTag,
  inOrder,
}

extension LocalizationItemArgumentPositionTypeExtension
    on LocalizationItemArgumentPositionType {
  String get friendlyName {
    switch (this) {
      case LocalizationItemArgumentPositionType.byTag:
        return 'ByTag';
      case LocalizationItemArgumentPositionType.inOrder:
        return 'InOrder';
    }
  }
}

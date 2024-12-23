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
}

extension LocalizationItemArgumentExtension on LocalizationItemArgument {
  String get friendlyName {
    return '${type.friendlyName}-${position.friendlyName}';
  }
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
class LocalizationItemArgumentPosition with _$LocalizationItemArgumentPosition {
  const factory LocalizationItemArgumentPosition({
    required int index,
    required LocalizationItemArgumentPositionType type,
  }) = _LocalizationItemArgumentPosition;

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
}

extension LocalizationItemArgumentPositionExtension
    on LocalizationItemArgumentPosition {
  String get friendlyName {
    return '$index:${type.friendlyName}';
  }
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
        return 'By tag';
      case LocalizationItemArgumentPositionType.inOrder:
        return 'In order';
    }
  }
}

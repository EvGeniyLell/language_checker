// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_item_argument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalizationItemArgument _$LocalizationItemArgumentFromJson(
    Map<String, dynamic> json) {
  return _LocalizationItemArgument.fromJson(json);
}

/// @nodoc
mixin _$LocalizationItemArgument {
  LocalizationItemArgumentPosition get position =>
      throw _privateConstructorUsedError;
  LocalizationItemArgumentType get type => throw _privateConstructorUsedError;

  /// Serializes this LocalizationItemArgument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationItemArgument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationItemArgumentCopyWith<LocalizationItemArgument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationItemArgumentCopyWith<$Res> {
  factory $LocalizationItemArgumentCopyWith(LocalizationItemArgument value,
          $Res Function(LocalizationItemArgument) then) =
      _$LocalizationItemArgumentCopyWithImpl<$Res, LocalizationItemArgument>;
  @useResult
  $Res call(
      {LocalizationItemArgumentPosition position,
      LocalizationItemArgumentType type});

  $LocalizationItemArgumentPositionCopyWith<$Res> get position;
}

/// @nodoc
class _$LocalizationItemArgumentCopyWithImpl<$Res,
        $Val extends LocalizationItemArgument>
    implements $LocalizationItemArgumentCopyWith<$Res> {
  _$LocalizationItemArgumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationItemArgument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentPosition,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentType,
    ) as $Val);
  }

  /// Create a copy of LocalizationItemArgument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizationItemArgumentPositionCopyWith<$Res> get position {
    return $LocalizationItemArgumentPositionCopyWith<$Res>(_value.position,
        (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalizationItemArgumentImplCopyWith<$Res>
    implements $LocalizationItemArgumentCopyWith<$Res> {
  factory _$$LocalizationItemArgumentImplCopyWith(
          _$LocalizationItemArgumentImpl value,
          $Res Function(_$LocalizationItemArgumentImpl) then) =
      __$$LocalizationItemArgumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocalizationItemArgumentPosition position,
      LocalizationItemArgumentType type});

  @override
  $LocalizationItemArgumentPositionCopyWith<$Res> get position;
}

/// @nodoc
class __$$LocalizationItemArgumentImplCopyWithImpl<$Res>
    extends _$LocalizationItemArgumentCopyWithImpl<$Res,
        _$LocalizationItemArgumentImpl>
    implements _$$LocalizationItemArgumentImplCopyWith<$Res> {
  __$$LocalizationItemArgumentImplCopyWithImpl(
      _$LocalizationItemArgumentImpl _value,
      $Res Function(_$LocalizationItemArgumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationItemArgument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? type = null,
  }) {
    return _then(_$LocalizationItemArgumentImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentPosition,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationItemArgumentImpl extends _LocalizationItemArgument {
  const _$LocalizationItemArgumentImpl(
      {required this.position, required this.type})
      : super._();

  factory _$LocalizationItemArgumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizationItemArgumentImplFromJson(json);

  @override
  final LocalizationItemArgumentPosition position;
  @override
  final LocalizationItemArgumentType type;

  @override
  String toString() {
    return 'LocalizationItemArgument(position: $position, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationItemArgumentImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, position, type);

  /// Create a copy of LocalizationItemArgument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationItemArgumentImplCopyWith<_$LocalizationItemArgumentImpl>
      get copyWith => __$$LocalizationItemArgumentImplCopyWithImpl<
          _$LocalizationItemArgumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizationItemArgumentImplToJson(
      this,
    );
  }
}

abstract class _LocalizationItemArgument extends LocalizationItemArgument {
  const factory _LocalizationItemArgument(
          {required final LocalizationItemArgumentPosition position,
          required final LocalizationItemArgumentType type}) =
      _$LocalizationItemArgumentImpl;
  const _LocalizationItemArgument._() : super._();

  factory _LocalizationItemArgument.fromJson(Map<String, dynamic> json) =
      _$LocalizationItemArgumentImpl.fromJson;

  @override
  LocalizationItemArgumentPosition get position;
  @override
  LocalizationItemArgumentType get type;

  /// Create a copy of LocalizationItemArgument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationItemArgumentImplCopyWith<_$LocalizationItemArgumentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocalizationItemArgumentPosition _$LocalizationItemArgumentPositionFromJson(
    Map<String, dynamic> json) {
  return _LocalizationItemArgumentPosition.fromJson(json);
}

/// @nodoc
mixin _$LocalizationItemArgumentPosition {
  int get index => throw _privateConstructorUsedError;
  LocalizationItemArgumentPositionType get type =>
      throw _privateConstructorUsedError;

  /// Serializes this LocalizationItemArgumentPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationItemArgumentPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationItemArgumentPositionCopyWith<LocalizationItemArgumentPosition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationItemArgumentPositionCopyWith<$Res> {
  factory $LocalizationItemArgumentPositionCopyWith(
          LocalizationItemArgumentPosition value,
          $Res Function(LocalizationItemArgumentPosition) then) =
      _$LocalizationItemArgumentPositionCopyWithImpl<$Res,
          LocalizationItemArgumentPosition>;
  @useResult
  $Res call({int index, LocalizationItemArgumentPositionType type});
}

/// @nodoc
class _$LocalizationItemArgumentPositionCopyWithImpl<$Res,
        $Val extends LocalizationItemArgumentPosition>
    implements $LocalizationItemArgumentPositionCopyWith<$Res> {
  _$LocalizationItemArgumentPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationItemArgumentPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentPositionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizationItemArgumentPositionImplCopyWith<$Res>
    implements $LocalizationItemArgumentPositionCopyWith<$Res> {
  factory _$$LocalizationItemArgumentPositionImplCopyWith(
          _$LocalizationItemArgumentPositionImpl value,
          $Res Function(_$LocalizationItemArgumentPositionImpl) then) =
      __$$LocalizationItemArgumentPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, LocalizationItemArgumentPositionType type});
}

/// @nodoc
class __$$LocalizationItemArgumentPositionImplCopyWithImpl<$Res>
    extends _$LocalizationItemArgumentPositionCopyWithImpl<$Res,
        _$LocalizationItemArgumentPositionImpl>
    implements _$$LocalizationItemArgumentPositionImplCopyWith<$Res> {
  __$$LocalizationItemArgumentPositionImplCopyWithImpl(
      _$LocalizationItemArgumentPositionImpl _value,
      $Res Function(_$LocalizationItemArgumentPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationItemArgumentPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? type = null,
  }) {
    return _then(_$LocalizationItemArgumentPositionImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentPositionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationItemArgumentPositionImpl
    extends _LocalizationItemArgumentPosition {
  const _$LocalizationItemArgumentPositionImpl(
      {required this.index, required this.type})
      : super._();

  factory _$LocalizationItemArgumentPositionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LocalizationItemArgumentPositionImplFromJson(json);

  @override
  final int index;
  @override
  final LocalizationItemArgumentPositionType type;

  @override
  String toString() {
    return 'LocalizationItemArgumentPosition(index: $index, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationItemArgumentPositionImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, type);

  /// Create a copy of LocalizationItemArgumentPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationItemArgumentPositionImplCopyWith<
          _$LocalizationItemArgumentPositionImpl>
      get copyWith => __$$LocalizationItemArgumentPositionImplCopyWithImpl<
          _$LocalizationItemArgumentPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizationItemArgumentPositionImplToJson(
      this,
    );
  }
}

abstract class _LocalizationItemArgumentPosition
    extends LocalizationItemArgumentPosition {
  const factory _LocalizationItemArgumentPosition(
          {required final int index,
          required final LocalizationItemArgumentPositionType type}) =
      _$LocalizationItemArgumentPositionImpl;
  const _LocalizationItemArgumentPosition._() : super._();

  factory _LocalizationItemArgumentPosition.fromJson(
          Map<String, dynamic> json) =
      _$LocalizationItemArgumentPositionImpl.fromJson;

  @override
  int get index;
  @override
  LocalizationItemArgumentPositionType get type;

  /// Create a copy of LocalizationItemArgumentPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationItemArgumentPositionImplCopyWith<
          _$LocalizationItemArgumentPositionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

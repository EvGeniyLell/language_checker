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
  String? get tag => throw _privateConstructorUsedError;
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
  $Res call({String? tag, LocalizationItemArgumentType type});
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
    Object? tag = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentType,
    ) as $Val);
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
  $Res call({String? tag, LocalizationItemArgumentType type});
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
    Object? tag = freezed,
    Object? type = null,
  }) {
    return _then(_$LocalizationItemArgumentImpl(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationItemArgumentType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationItemArgumentImpl implements _LocalizationItemArgument {
  const _$LocalizationItemArgumentImpl({required this.tag, required this.type});

  factory _$LocalizationItemArgumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizationItemArgumentImplFromJson(json);

  @override
  final String? tag;
  @override
  final LocalizationItemArgumentType type;

  @override
  String toString() {
    return 'LocalizationItemArgument(tag: $tag, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationItemArgumentImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tag, type);

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

abstract class _LocalizationItemArgument implements LocalizationItemArgument {
  const factory _LocalizationItemArgument(
          {required final String? tag,
          required final LocalizationItemArgumentType type}) =
      _$LocalizationItemArgumentImpl;

  factory _LocalizationItemArgument.fromJson(Map<String, dynamic> json) =
      _$LocalizationItemArgumentImpl.fromJson;

  @override
  String? get tag;
  @override
  LocalizationItemArgumentType get type;

  /// Create a copy of LocalizationItemArgument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationItemArgumentImplCopyWith<_$LocalizationItemArgumentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

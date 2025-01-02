// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_string_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResourceStringDto _$ResourceStringDtoFromJson(Map<String, dynamic> json) {
  return _ResourceStringDto.fromJson(json);
}

/// @nodoc
mixin _$ResourceStringDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: r'$t')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ResourceStringDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResourceStringDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceStringDtoCopyWith<ResourceStringDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceStringDtoCopyWith<$Res> {
  factory $ResourceStringDtoCopyWith(
          ResourceStringDto value, $Res Function(ResourceStringDto) then) =
      _$ResourceStringDtoCopyWithImpl<$Res, ResourceStringDto>;
  @useResult
  $Res call({String name, @JsonKey(name: r'$t') String message});
}

/// @nodoc
class _$ResourceStringDtoCopyWithImpl<$Res, $Val extends ResourceStringDto>
    implements $ResourceStringDtoCopyWith<$Res> {
  _$ResourceStringDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourceStringDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceStringDtoImplCopyWith<$Res>
    implements $ResourceStringDtoCopyWith<$Res> {
  factory _$$ResourceStringDtoImplCopyWith(_$ResourceStringDtoImpl value,
          $Res Function(_$ResourceStringDtoImpl) then) =
      __$$ResourceStringDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: r'$t') String message});
}

/// @nodoc
class __$$ResourceStringDtoImplCopyWithImpl<$Res>
    extends _$ResourceStringDtoCopyWithImpl<$Res, _$ResourceStringDtoImpl>
    implements _$$ResourceStringDtoImplCopyWith<$Res> {
  __$$ResourceStringDtoImplCopyWithImpl(_$ResourceStringDtoImpl _value,
      $Res Function(_$ResourceStringDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourceStringDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_$ResourceStringDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceStringDtoImpl implements _ResourceStringDto {
  const _$ResourceStringDtoImpl(
      {required this.name, @JsonKey(name: r'$t') required this.message});

  factory _$ResourceStringDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceStringDtoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: r'$t')
  final String message;

  @override
  String toString() {
    return 'ResourceStringDto(name: $name, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceStringDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, message);

  /// Create a copy of ResourceStringDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceStringDtoImplCopyWith<_$ResourceStringDtoImpl> get copyWith =>
      __$$ResourceStringDtoImplCopyWithImpl<_$ResourceStringDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceStringDtoImplToJson(
      this,
    );
  }
}

abstract class _ResourceStringDto implements ResourceStringDto {
  const factory _ResourceStringDto(
          {required final String name,
          @JsonKey(name: r'$t') required final String message}) =
      _$ResourceStringDtoImpl;

  factory _ResourceStringDto.fromJson(Map<String, dynamic> json) =
      _$ResourceStringDtoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: r'$t')
  String get message;

  /// Create a copy of ResourceStringDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceStringDtoImplCopyWith<_$ResourceStringDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

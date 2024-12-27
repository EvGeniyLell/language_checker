// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalizationDto _$LocalizationDtoFromJson(Map<String, dynamic> json) {
  return _LocalizationDto.fromJson(json);
}

/// @nodoc
mixin _$LocalizationDto {
  ResourcesDto get resources => throw _privateConstructorUsedError;

  /// Serializes this LocalizationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationDtoCopyWith<LocalizationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationDtoCopyWith<$Res> {
  factory $LocalizationDtoCopyWith(
          LocalizationDto value, $Res Function(LocalizationDto) then) =
      _$LocalizationDtoCopyWithImpl<$Res, LocalizationDto>;
  @useResult
  $Res call({ResourcesDto resources});

  $ResourcesDtoCopyWith<$Res> get resources;
}

/// @nodoc
class _$LocalizationDtoCopyWithImpl<$Res, $Val extends LocalizationDto>
    implements $LocalizationDtoCopyWith<$Res> {
  _$LocalizationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
  }) {
    return _then(_value.copyWith(
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ResourcesDto,
    ) as $Val);
  }

  /// Create a copy of LocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResourcesDtoCopyWith<$Res> get resources {
    return $ResourcesDtoCopyWith<$Res>(_value.resources, (value) {
      return _then(_value.copyWith(resources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalizationDtoImplCopyWith<$Res>
    implements $LocalizationDtoCopyWith<$Res> {
  factory _$$LocalizationDtoImplCopyWith(_$LocalizationDtoImpl value,
          $Res Function(_$LocalizationDtoImpl) then) =
      __$$LocalizationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResourcesDto resources});

  @override
  $ResourcesDtoCopyWith<$Res> get resources;
}

/// @nodoc
class __$$LocalizationDtoImplCopyWithImpl<$Res>
    extends _$LocalizationDtoCopyWithImpl<$Res, _$LocalizationDtoImpl>
    implements _$$LocalizationDtoImplCopyWith<$Res> {
  __$$LocalizationDtoImplCopyWithImpl(
      _$LocalizationDtoImpl _value, $Res Function(_$LocalizationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
  }) {
    return _then(_$LocalizationDtoImpl(
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ResourcesDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationDtoImpl implements _LocalizationDto {
  const _$LocalizationDtoImpl({required this.resources});

  factory _$LocalizationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizationDtoImplFromJson(json);

  @override
  final ResourcesDto resources;

  @override
  String toString() {
    return 'LocalizationDto(resources: $resources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationDtoImpl &&
            (identical(other.resources, resources) ||
                other.resources == resources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, resources);

  /// Create a copy of LocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationDtoImplCopyWith<_$LocalizationDtoImpl> get copyWith =>
      __$$LocalizationDtoImplCopyWithImpl<_$LocalizationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizationDtoImplToJson(
      this,
    );
  }
}

abstract class _LocalizationDto implements LocalizationDto {
  const factory _LocalizationDto({required final ResourcesDto resources}) =
      _$LocalizationDtoImpl;

  factory _LocalizationDto.fromJson(Map<String, dynamic> json) =
      _$LocalizationDtoImpl.fromJson;

  @override
  ResourcesDto get resources;

  /// Create a copy of LocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationDtoImplCopyWith<_$LocalizationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

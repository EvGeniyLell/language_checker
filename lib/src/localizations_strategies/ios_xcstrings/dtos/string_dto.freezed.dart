// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'string_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StringDto _$StringDtoFromJson(Map<String, dynamic> json) {
  return _StringDto.fromJson(json);
}

/// @nodoc
mixin _$StringDto {
  String get key => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get extractionState => throw _privateConstructorUsedError;
  List<StringLocalizationDto> get localizations =>
      throw _privateConstructorUsedError;

  /// Serializes this StringDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringDtoCopyWith<StringDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringDtoCopyWith<$Res> {
  factory $StringDtoCopyWith(StringDto value, $Res Function(StringDto) then) =
      _$StringDtoCopyWithImpl<$Res, StringDto>;
  @useResult
  $Res call(
      {String key,
      String? comment,
      String? extractionState,
      List<StringLocalizationDto> localizations});
}

/// @nodoc
class _$StringDtoCopyWithImpl<$Res, $Val extends StringDto>
    implements $StringDtoCopyWith<$Res> {
  _$StringDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? comment = freezed,
    Object? extractionState = freezed,
    Object? localizations = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      extractionState: freezed == extractionState
          ? _value.extractionState
          : extractionState // ignore: cast_nullable_to_non_nullable
              as String?,
      localizations: null == localizations
          ? _value.localizations
          : localizations // ignore: cast_nullable_to_non_nullable
              as List<StringLocalizationDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringDtoImplCopyWith<$Res>
    implements $StringDtoCopyWith<$Res> {
  factory _$$StringDtoImplCopyWith(
          _$StringDtoImpl value, $Res Function(_$StringDtoImpl) then) =
      __$$StringDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String? comment,
      String? extractionState,
      List<StringLocalizationDto> localizations});
}

/// @nodoc
class __$$StringDtoImplCopyWithImpl<$Res>
    extends _$StringDtoCopyWithImpl<$Res, _$StringDtoImpl>
    implements _$$StringDtoImplCopyWith<$Res> {
  __$$StringDtoImplCopyWithImpl(
      _$StringDtoImpl _value, $Res Function(_$StringDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? comment = freezed,
    Object? extractionState = freezed,
    Object? localizations = null,
  }) {
    return _then(_$StringDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      extractionState: freezed == extractionState
          ? _value.extractionState
          : extractionState // ignore: cast_nullable_to_non_nullable
              as String?,
      localizations: null == localizations
          ? _value._localizations
          : localizations // ignore: cast_nullable_to_non_nullable
              as List<StringLocalizationDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringDtoImpl implements _StringDto {
  const _$StringDtoImpl(
      {required this.key,
      required this.comment,
      required this.extractionState,
      required final List<StringLocalizationDto> localizations})
      : _localizations = localizations;

  factory _$StringDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringDtoImplFromJson(json);

  @override
  final String key;
  @override
  final String? comment;
  @override
  final String? extractionState;
  final List<StringLocalizationDto> _localizations;
  @override
  List<StringLocalizationDto> get localizations {
    if (_localizations is EqualUnmodifiableListView) return _localizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localizations);
  }

  @override
  String toString() {
    return 'StringDto(key: $key, comment: $comment, extractionState: $extractionState, localizations: $localizations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.extractionState, extractionState) ||
                other.extractionState == extractionState) &&
            const DeepCollectionEquality()
                .equals(other._localizations, _localizations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, comment, extractionState,
      const DeepCollectionEquality().hash(_localizations));

  /// Create a copy of StringDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringDtoImplCopyWith<_$StringDtoImpl> get copyWith =>
      __$$StringDtoImplCopyWithImpl<_$StringDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringDtoImplToJson(
      this,
    );
  }
}

abstract class _StringDto implements StringDto {
  const factory _StringDto(
          {required final String key,
          required final String? comment,
          required final String? extractionState,
          required final List<StringLocalizationDto> localizations}) =
      _$StringDtoImpl;

  factory _StringDto.fromJson(Map<String, dynamic> json) =
      _$StringDtoImpl.fromJson;

  @override
  String get key;
  @override
  String? get comment;
  @override
  String? get extractionState;
  @override
  List<StringLocalizationDto> get localizations;

  /// Create a copy of StringDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringDtoImplCopyWith<_$StringDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'string_localization_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StringLocalizationDto _$StringLocalizationDtoFromJson(
    Map<String, dynamic> json) {
  return _StringLocalizationDto.fromJson(json);
}

/// @nodoc
mixin _$StringLocalizationDto {
  @JsonKey(name: 'key')
  String get languageKey => throw _privateConstructorUsedError;
  StringLocalizationUnitDto? get stringUnit =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'variations')
  StringLocalizationVariationDto? get variation =>
      throw _privateConstructorUsedError;
  List<StringLocalizationSubstitutionsDto>? get substitutions =>
      throw _privateConstructorUsedError;

  /// Serializes this StringLocalizationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringLocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringLocalizationDtoCopyWith<StringLocalizationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringLocalizationDtoCopyWith<$Res> {
  factory $StringLocalizationDtoCopyWith(StringLocalizationDto value,
          $Res Function(StringLocalizationDto) then) =
      _$StringLocalizationDtoCopyWithImpl<$Res, StringLocalizationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String languageKey,
      StringLocalizationUnitDto? stringUnit,
      @JsonKey(name: 'variations') StringLocalizationVariationDto? variation,
      List<StringLocalizationSubstitutionsDto>? substitutions});

  $StringLocalizationUnitDtoCopyWith<$Res>? get stringUnit;
  $StringLocalizationVariationDtoCopyWith<$Res>? get variation;
}

/// @nodoc
class _$StringLocalizationDtoCopyWithImpl<$Res,
        $Val extends StringLocalizationDto>
    implements $StringLocalizationDtoCopyWith<$Res> {
  _$StringLocalizationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringLocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageKey = null,
    Object? stringUnit = freezed,
    Object? variation = freezed,
    Object? substitutions = freezed,
  }) {
    return _then(_value.copyWith(
      languageKey: null == languageKey
          ? _value.languageKey
          : languageKey // ignore: cast_nullable_to_non_nullable
              as String,
      stringUnit: freezed == stringUnit
          ? _value.stringUnit
          : stringUnit // ignore: cast_nullable_to_non_nullable
              as StringLocalizationUnitDto?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as StringLocalizationVariationDto?,
      substitutions: freezed == substitutions
          ? _value.substitutions
          : substitutions // ignore: cast_nullable_to_non_nullable
              as List<StringLocalizationSubstitutionsDto>?,
    ) as $Val);
  }

  /// Create a copy of StringLocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringLocalizationUnitDtoCopyWith<$Res>? get stringUnit {
    if (_value.stringUnit == null) {
      return null;
    }

    return $StringLocalizationUnitDtoCopyWith<$Res>(_value.stringUnit!,
        (value) {
      return _then(_value.copyWith(stringUnit: value) as $Val);
    });
  }

  /// Create a copy of StringLocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringLocalizationVariationDtoCopyWith<$Res>? get variation {
    if (_value.variation == null) {
      return null;
    }

    return $StringLocalizationVariationDtoCopyWith<$Res>(_value.variation!,
        (value) {
      return _then(_value.copyWith(variation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StringLocalizationDtoImplCopyWith<$Res>
    implements $StringLocalizationDtoCopyWith<$Res> {
  factory _$$StringLocalizationDtoImplCopyWith(
          _$StringLocalizationDtoImpl value,
          $Res Function(_$StringLocalizationDtoImpl) then) =
      __$$StringLocalizationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String languageKey,
      StringLocalizationUnitDto? stringUnit,
      @JsonKey(name: 'variations') StringLocalizationVariationDto? variation,
      List<StringLocalizationSubstitutionsDto>? substitutions});

  @override
  $StringLocalizationUnitDtoCopyWith<$Res>? get stringUnit;
  @override
  $StringLocalizationVariationDtoCopyWith<$Res>? get variation;
}

/// @nodoc
class __$$StringLocalizationDtoImplCopyWithImpl<$Res>
    extends _$StringLocalizationDtoCopyWithImpl<$Res,
        _$StringLocalizationDtoImpl>
    implements _$$StringLocalizationDtoImplCopyWith<$Res> {
  __$$StringLocalizationDtoImplCopyWithImpl(_$StringLocalizationDtoImpl _value,
      $Res Function(_$StringLocalizationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringLocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageKey = null,
    Object? stringUnit = freezed,
    Object? variation = freezed,
    Object? substitutions = freezed,
  }) {
    return _then(_$StringLocalizationDtoImpl(
      languageKey: null == languageKey
          ? _value.languageKey
          : languageKey // ignore: cast_nullable_to_non_nullable
              as String,
      stringUnit: freezed == stringUnit
          ? _value.stringUnit
          : stringUnit // ignore: cast_nullable_to_non_nullable
              as StringLocalizationUnitDto?,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as StringLocalizationVariationDto?,
      substitutions: freezed == substitutions
          ? _value._substitutions
          : substitutions // ignore: cast_nullable_to_non_nullable
              as List<StringLocalizationSubstitutionsDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringLocalizationDtoImpl implements _StringLocalizationDto {
  const _$StringLocalizationDtoImpl(
      {@JsonKey(name: 'key') required this.languageKey,
      required this.stringUnit,
      @JsonKey(name: 'variations') required this.variation,
      required final List<StringLocalizationSubstitutionsDto>? substitutions})
      : _substitutions = substitutions;

  factory _$StringLocalizationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringLocalizationDtoImplFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String languageKey;
  @override
  final StringLocalizationUnitDto? stringUnit;
  @override
  @JsonKey(name: 'variations')
  final StringLocalizationVariationDto? variation;
  final List<StringLocalizationSubstitutionsDto>? _substitutions;
  @override
  List<StringLocalizationSubstitutionsDto>? get substitutions {
    final value = _substitutions;
    if (value == null) return null;
    if (_substitutions is EqualUnmodifiableListView) return _substitutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StringLocalizationDto(languageKey: $languageKey, stringUnit: $stringUnit, variation: $variation, substitutions: $substitutions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringLocalizationDtoImpl &&
            (identical(other.languageKey, languageKey) ||
                other.languageKey == languageKey) &&
            (identical(other.stringUnit, stringUnit) ||
                other.stringUnit == stringUnit) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            const DeepCollectionEquality()
                .equals(other._substitutions, _substitutions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, languageKey, stringUnit,
      variation, const DeepCollectionEquality().hash(_substitutions));

  /// Create a copy of StringLocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringLocalizationDtoImplCopyWith<_$StringLocalizationDtoImpl>
      get copyWith => __$$StringLocalizationDtoImplCopyWithImpl<
          _$StringLocalizationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringLocalizationDtoImplToJson(
      this,
    );
  }
}

abstract class _StringLocalizationDto implements StringLocalizationDto {
  const factory _StringLocalizationDto(
      {@JsonKey(name: 'key') required final String languageKey,
      required final StringLocalizationUnitDto? stringUnit,
      @JsonKey(name: 'variations')
      required final StringLocalizationVariationDto? variation,
      required final List<StringLocalizationSubstitutionsDto>?
          substitutions}) = _$StringLocalizationDtoImpl;

  factory _StringLocalizationDto.fromJson(Map<String, dynamic> json) =
      _$StringLocalizationDtoImpl.fromJson;

  @override
  @JsonKey(name: 'key')
  String get languageKey;
  @override
  StringLocalizationUnitDto? get stringUnit;
  @override
  @JsonKey(name: 'variations')
  StringLocalizationVariationDto? get variation;
  @override
  List<StringLocalizationSubstitutionsDto>? get substitutions;

  /// Create a copy of StringLocalizationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringLocalizationDtoImplCopyWith<_$StringLocalizationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StringLocalizationUnitDto _$StringLocalizationUnitDtoFromJson(
    Map<String, dynamic> json) {
  return _StringLocalizationUnitDto.fromJson(json);
}

/// @nodoc
mixin _$StringLocalizationUnitDto {
  String? get state => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this StringLocalizationUnitDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringLocalizationUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringLocalizationUnitDtoCopyWith<StringLocalizationUnitDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringLocalizationUnitDtoCopyWith<$Res> {
  factory $StringLocalizationUnitDtoCopyWith(StringLocalizationUnitDto value,
          $Res Function(StringLocalizationUnitDto) then) =
      _$StringLocalizationUnitDtoCopyWithImpl<$Res, StringLocalizationUnitDto>;
  @useResult
  $Res call({String? state, String value});
}

/// @nodoc
class _$StringLocalizationUnitDtoCopyWithImpl<$Res,
        $Val extends StringLocalizationUnitDto>
    implements $StringLocalizationUnitDtoCopyWith<$Res> {
  _$StringLocalizationUnitDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringLocalizationUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringLocalizationUnitDtoImplCopyWith<$Res>
    implements $StringLocalizationUnitDtoCopyWith<$Res> {
  factory _$$StringLocalizationUnitDtoImplCopyWith(
          _$StringLocalizationUnitDtoImpl value,
          $Res Function(_$StringLocalizationUnitDtoImpl) then) =
      __$$StringLocalizationUnitDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? state, String value});
}

/// @nodoc
class __$$StringLocalizationUnitDtoImplCopyWithImpl<$Res>
    extends _$StringLocalizationUnitDtoCopyWithImpl<$Res,
        _$StringLocalizationUnitDtoImpl>
    implements _$$StringLocalizationUnitDtoImplCopyWith<$Res> {
  __$$StringLocalizationUnitDtoImplCopyWithImpl(
      _$StringLocalizationUnitDtoImpl _value,
      $Res Function(_$StringLocalizationUnitDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringLocalizationUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? value = null,
  }) {
    return _then(_$StringLocalizationUnitDtoImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringLocalizationUnitDtoImpl implements _StringLocalizationUnitDto {
  const _$StringLocalizationUnitDtoImpl(
      {required this.state, required this.value});

  factory _$StringLocalizationUnitDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringLocalizationUnitDtoImplFromJson(json);

  @override
  final String? state;
  @override
  final String value;

  @override
  String toString() {
    return 'StringLocalizationUnitDto(state: $state, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringLocalizationUnitDtoImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, value);

  /// Create a copy of StringLocalizationUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringLocalizationUnitDtoImplCopyWith<_$StringLocalizationUnitDtoImpl>
      get copyWith => __$$StringLocalizationUnitDtoImplCopyWithImpl<
          _$StringLocalizationUnitDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringLocalizationUnitDtoImplToJson(
      this,
    );
  }
}

abstract class _StringLocalizationUnitDto implements StringLocalizationUnitDto {
  const factory _StringLocalizationUnitDto(
      {required final String? state,
      required final String value}) = _$StringLocalizationUnitDtoImpl;

  factory _StringLocalizationUnitDto.fromJson(Map<String, dynamic> json) =
      _$StringLocalizationUnitDtoImpl.fromJson;

  @override
  String? get state;
  @override
  String get value;

  /// Create a copy of StringLocalizationUnitDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringLocalizationUnitDtoImplCopyWith<_$StringLocalizationUnitDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StringLocalizationVariationPluralDto
    _$StringLocalizationVariationPluralDtoFromJson(Map<String, dynamic> json) {
  return _StringLocalizationVariationPluralDto.fromJson(json);
}

/// @nodoc
mixin _$StringLocalizationVariationPluralDto {
  String get key => throw _privateConstructorUsedError;
  StringLocalizationUnitDto get stringUnit =>
      throw _privateConstructorUsedError;

  /// Serializes this StringLocalizationVariationPluralDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringLocalizationVariationPluralDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringLocalizationVariationPluralDtoCopyWith<
          StringLocalizationVariationPluralDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringLocalizationVariationPluralDtoCopyWith<$Res> {
  factory $StringLocalizationVariationPluralDtoCopyWith(
          StringLocalizationVariationPluralDto value,
          $Res Function(StringLocalizationVariationPluralDto) then) =
      _$StringLocalizationVariationPluralDtoCopyWithImpl<$Res,
          StringLocalizationVariationPluralDto>;
  @useResult
  $Res call({String key, StringLocalizationUnitDto stringUnit});

  $StringLocalizationUnitDtoCopyWith<$Res> get stringUnit;
}

/// @nodoc
class _$StringLocalizationVariationPluralDtoCopyWithImpl<$Res,
        $Val extends StringLocalizationVariationPluralDto>
    implements $StringLocalizationVariationPluralDtoCopyWith<$Res> {
  _$StringLocalizationVariationPluralDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringLocalizationVariationPluralDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? stringUnit = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      stringUnit: null == stringUnit
          ? _value.stringUnit
          : stringUnit // ignore: cast_nullable_to_non_nullable
              as StringLocalizationUnitDto,
    ) as $Val);
  }

  /// Create a copy of StringLocalizationVariationPluralDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringLocalizationUnitDtoCopyWith<$Res> get stringUnit {
    return $StringLocalizationUnitDtoCopyWith<$Res>(_value.stringUnit, (value) {
      return _then(_value.copyWith(stringUnit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StringLocalizationVariationPluralDtoImplCopyWith<$Res>
    implements $StringLocalizationVariationPluralDtoCopyWith<$Res> {
  factory _$$StringLocalizationVariationPluralDtoImplCopyWith(
          _$StringLocalizationVariationPluralDtoImpl value,
          $Res Function(_$StringLocalizationVariationPluralDtoImpl) then) =
      __$$StringLocalizationVariationPluralDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, StringLocalizationUnitDto stringUnit});

  @override
  $StringLocalizationUnitDtoCopyWith<$Res> get stringUnit;
}

/// @nodoc
class __$$StringLocalizationVariationPluralDtoImplCopyWithImpl<$Res>
    extends _$StringLocalizationVariationPluralDtoCopyWithImpl<$Res,
        _$StringLocalizationVariationPluralDtoImpl>
    implements _$$StringLocalizationVariationPluralDtoImplCopyWith<$Res> {
  __$$StringLocalizationVariationPluralDtoImplCopyWithImpl(
      _$StringLocalizationVariationPluralDtoImpl _value,
      $Res Function(_$StringLocalizationVariationPluralDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringLocalizationVariationPluralDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? stringUnit = null,
  }) {
    return _then(_$StringLocalizationVariationPluralDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      stringUnit: null == stringUnit
          ? _value.stringUnit
          : stringUnit // ignore: cast_nullable_to_non_nullable
              as StringLocalizationUnitDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringLocalizationVariationPluralDtoImpl
    implements _StringLocalizationVariationPluralDto {
  const _$StringLocalizationVariationPluralDtoImpl(
      {required this.key, required this.stringUnit});

  factory _$StringLocalizationVariationPluralDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StringLocalizationVariationPluralDtoImplFromJson(json);

  @override
  final String key;
  @override
  final StringLocalizationUnitDto stringUnit;

  @override
  String toString() {
    return 'StringLocalizationVariationPluralDto(key: $key, stringUnit: $stringUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringLocalizationVariationPluralDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.stringUnit, stringUnit) ||
                other.stringUnit == stringUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, stringUnit);

  /// Create a copy of StringLocalizationVariationPluralDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringLocalizationVariationPluralDtoImplCopyWith<
          _$StringLocalizationVariationPluralDtoImpl>
      get copyWith => __$$StringLocalizationVariationPluralDtoImplCopyWithImpl<
          _$StringLocalizationVariationPluralDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringLocalizationVariationPluralDtoImplToJson(
      this,
    );
  }
}

abstract class _StringLocalizationVariationPluralDto
    implements StringLocalizationVariationPluralDto {
  const factory _StringLocalizationVariationPluralDto(
          {required final String key,
          required final StringLocalizationUnitDto stringUnit}) =
      _$StringLocalizationVariationPluralDtoImpl;

  factory _StringLocalizationVariationPluralDto.fromJson(
          Map<String, dynamic> json) =
      _$StringLocalizationVariationPluralDtoImpl.fromJson;

  @override
  String get key;
  @override
  StringLocalizationUnitDto get stringUnit;

  /// Create a copy of StringLocalizationVariationPluralDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringLocalizationVariationPluralDtoImplCopyWith<
          _$StringLocalizationVariationPluralDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StringLocalizationVariationDto _$StringLocalizationVariationDtoFromJson(
    Map<String, dynamic> json) {
  return _StringLocalizationVariationDto.fromJson(json);
}

/// @nodoc
mixin _$StringLocalizationVariationDto {
  @JsonKey(name: 'plural')
  List<StringLocalizationVariationPluralDto> get plurals =>
      throw _privateConstructorUsedError;

  /// Serializes this StringLocalizationVariationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringLocalizationVariationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringLocalizationVariationDtoCopyWith<StringLocalizationVariationDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringLocalizationVariationDtoCopyWith<$Res> {
  factory $StringLocalizationVariationDtoCopyWith(
          StringLocalizationVariationDto value,
          $Res Function(StringLocalizationVariationDto) then) =
      _$StringLocalizationVariationDtoCopyWithImpl<$Res,
          StringLocalizationVariationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'plural')
      List<StringLocalizationVariationPluralDto> plurals});
}

/// @nodoc
class _$StringLocalizationVariationDtoCopyWithImpl<$Res,
        $Val extends StringLocalizationVariationDto>
    implements $StringLocalizationVariationDtoCopyWith<$Res> {
  _$StringLocalizationVariationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringLocalizationVariationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plurals = null,
  }) {
    return _then(_value.copyWith(
      plurals: null == plurals
          ? _value.plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as List<StringLocalizationVariationPluralDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringLocalizationVariationDtoImplCopyWith<$Res>
    implements $StringLocalizationVariationDtoCopyWith<$Res> {
  factory _$$StringLocalizationVariationDtoImplCopyWith(
          _$StringLocalizationVariationDtoImpl value,
          $Res Function(_$StringLocalizationVariationDtoImpl) then) =
      __$$StringLocalizationVariationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'plural')
      List<StringLocalizationVariationPluralDto> plurals});
}

/// @nodoc
class __$$StringLocalizationVariationDtoImplCopyWithImpl<$Res>
    extends _$StringLocalizationVariationDtoCopyWithImpl<$Res,
        _$StringLocalizationVariationDtoImpl>
    implements _$$StringLocalizationVariationDtoImplCopyWith<$Res> {
  __$$StringLocalizationVariationDtoImplCopyWithImpl(
      _$StringLocalizationVariationDtoImpl _value,
      $Res Function(_$StringLocalizationVariationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringLocalizationVariationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plurals = null,
  }) {
    return _then(_$StringLocalizationVariationDtoImpl(
      plurals: null == plurals
          ? _value._plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as List<StringLocalizationVariationPluralDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringLocalizationVariationDtoImpl
    implements _StringLocalizationVariationDto {
  const _$StringLocalizationVariationDtoImpl(
      {@JsonKey(name: 'plural')
      required final List<StringLocalizationVariationPluralDto> plurals})
      : _plurals = plurals;

  factory _$StringLocalizationVariationDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StringLocalizationVariationDtoImplFromJson(json);

  final List<StringLocalizationVariationPluralDto> _plurals;
  @override
  @JsonKey(name: 'plural')
  List<StringLocalizationVariationPluralDto> get plurals {
    if (_plurals is EqualUnmodifiableListView) return _plurals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plurals);
  }

  @override
  String toString() {
    return 'StringLocalizationVariationDto(plurals: $plurals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringLocalizationVariationDtoImpl &&
            const DeepCollectionEquality().equals(other._plurals, _plurals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_plurals));

  /// Create a copy of StringLocalizationVariationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringLocalizationVariationDtoImplCopyWith<
          _$StringLocalizationVariationDtoImpl>
      get copyWith => __$$StringLocalizationVariationDtoImplCopyWithImpl<
          _$StringLocalizationVariationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringLocalizationVariationDtoImplToJson(
      this,
    );
  }
}

abstract class _StringLocalizationVariationDto
    implements StringLocalizationVariationDto {
  const factory _StringLocalizationVariationDto(
          {@JsonKey(name: 'plural')
          required final List<StringLocalizationVariationPluralDto> plurals}) =
      _$StringLocalizationVariationDtoImpl;

  factory _StringLocalizationVariationDto.fromJson(Map<String, dynamic> json) =
      _$StringLocalizationVariationDtoImpl.fromJson;

  @override
  @JsonKey(name: 'plural')
  List<StringLocalizationVariationPluralDto> get plurals;

  /// Create a copy of StringLocalizationVariationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringLocalizationVariationDtoImplCopyWith<
          _$StringLocalizationVariationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StringLocalizationSubstitutionsDto _$StringLocalizationSubstitutionsDtoFromJson(
    Map<String, dynamic> json) {
  return _StringLocalizationSubstitutionsDto.fromJson(json);
}

/// @nodoc
mixin _$StringLocalizationSubstitutionsDto {
  String get key => throw _privateConstructorUsedError;
  int get argNum => throw _privateConstructorUsedError;
  String get formatSpecifier => throw _privateConstructorUsedError;
  @JsonKey(name: 'variations')
  StringLocalizationVariationDto? get variation =>
      throw _privateConstructorUsedError;

  /// Serializes this StringLocalizationSubstitutionsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringLocalizationSubstitutionsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringLocalizationSubstitutionsDtoCopyWith<
          StringLocalizationSubstitutionsDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringLocalizationSubstitutionsDtoCopyWith<$Res> {
  factory $StringLocalizationSubstitutionsDtoCopyWith(
          StringLocalizationSubstitutionsDto value,
          $Res Function(StringLocalizationSubstitutionsDto) then) =
      _$StringLocalizationSubstitutionsDtoCopyWithImpl<$Res,
          StringLocalizationSubstitutionsDto>;
  @useResult
  $Res call(
      {String key,
      int argNum,
      String formatSpecifier,
      @JsonKey(name: 'variations') StringLocalizationVariationDto? variation});

  $StringLocalizationVariationDtoCopyWith<$Res>? get variation;
}

/// @nodoc
class _$StringLocalizationSubstitutionsDtoCopyWithImpl<$Res,
        $Val extends StringLocalizationSubstitutionsDto>
    implements $StringLocalizationSubstitutionsDtoCopyWith<$Res> {
  _$StringLocalizationSubstitutionsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringLocalizationSubstitutionsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? argNum = null,
    Object? formatSpecifier = null,
    Object? variation = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      argNum: null == argNum
          ? _value.argNum
          : argNum // ignore: cast_nullable_to_non_nullable
              as int,
      formatSpecifier: null == formatSpecifier
          ? _value.formatSpecifier
          : formatSpecifier // ignore: cast_nullable_to_non_nullable
              as String,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as StringLocalizationVariationDto?,
    ) as $Val);
  }

  /// Create a copy of StringLocalizationSubstitutionsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StringLocalizationVariationDtoCopyWith<$Res>? get variation {
    if (_value.variation == null) {
      return null;
    }

    return $StringLocalizationVariationDtoCopyWith<$Res>(_value.variation!,
        (value) {
      return _then(_value.copyWith(variation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StringLocalizationSubstitutionsDtoImplCopyWith<$Res>
    implements $StringLocalizationSubstitutionsDtoCopyWith<$Res> {
  factory _$$StringLocalizationSubstitutionsDtoImplCopyWith(
          _$StringLocalizationSubstitutionsDtoImpl value,
          $Res Function(_$StringLocalizationSubstitutionsDtoImpl) then) =
      __$$StringLocalizationSubstitutionsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      int argNum,
      String formatSpecifier,
      @JsonKey(name: 'variations') StringLocalizationVariationDto? variation});

  @override
  $StringLocalizationVariationDtoCopyWith<$Res>? get variation;
}

/// @nodoc
class __$$StringLocalizationSubstitutionsDtoImplCopyWithImpl<$Res>
    extends _$StringLocalizationSubstitutionsDtoCopyWithImpl<$Res,
        _$StringLocalizationSubstitutionsDtoImpl>
    implements _$$StringLocalizationSubstitutionsDtoImplCopyWith<$Res> {
  __$$StringLocalizationSubstitutionsDtoImplCopyWithImpl(
      _$StringLocalizationSubstitutionsDtoImpl _value,
      $Res Function(_$StringLocalizationSubstitutionsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringLocalizationSubstitutionsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? argNum = null,
    Object? formatSpecifier = null,
    Object? variation = freezed,
  }) {
    return _then(_$StringLocalizationSubstitutionsDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      argNum: null == argNum
          ? _value.argNum
          : argNum // ignore: cast_nullable_to_non_nullable
              as int,
      formatSpecifier: null == formatSpecifier
          ? _value.formatSpecifier
          : formatSpecifier // ignore: cast_nullable_to_non_nullable
              as String,
      variation: freezed == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as StringLocalizationVariationDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringLocalizationSubstitutionsDtoImpl
    implements _StringLocalizationSubstitutionsDto {
  const _$StringLocalizationSubstitutionsDtoImpl(
      {required this.key,
      required this.argNum,
      required this.formatSpecifier,
      @JsonKey(name: 'variations') required this.variation});

  factory _$StringLocalizationSubstitutionsDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StringLocalizationSubstitutionsDtoImplFromJson(json);

  @override
  final String key;
  @override
  final int argNum;
  @override
  final String formatSpecifier;
  @override
  @JsonKey(name: 'variations')
  final StringLocalizationVariationDto? variation;

  @override
  String toString() {
    return 'StringLocalizationSubstitutionsDto(key: $key, argNum: $argNum, formatSpecifier: $formatSpecifier, variation: $variation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringLocalizationSubstitutionsDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.argNum, argNum) || other.argNum == argNum) &&
            (identical(other.formatSpecifier, formatSpecifier) ||
                other.formatSpecifier == formatSpecifier) &&
            (identical(other.variation, variation) ||
                other.variation == variation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, argNum, formatSpecifier, variation);

  /// Create a copy of StringLocalizationSubstitutionsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringLocalizationSubstitutionsDtoImplCopyWith<
          _$StringLocalizationSubstitutionsDtoImpl>
      get copyWith => __$$StringLocalizationSubstitutionsDtoImplCopyWithImpl<
          _$StringLocalizationSubstitutionsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringLocalizationSubstitutionsDtoImplToJson(
      this,
    );
  }
}

abstract class _StringLocalizationSubstitutionsDto
    implements StringLocalizationSubstitutionsDto {
  const factory _StringLocalizationSubstitutionsDto(
          {required final String key,
          required final int argNum,
          required final String formatSpecifier,
          @JsonKey(name: 'variations')
          required final StringLocalizationVariationDto? variation}) =
      _$StringLocalizationSubstitutionsDtoImpl;

  factory _StringLocalizationSubstitutionsDto.fromJson(
          Map<String, dynamic> json) =
      _$StringLocalizationSubstitutionsDtoImpl.fromJson;

  @override
  String get key;
  @override
  int get argNum;
  @override
  String get formatSpecifier;
  @override
  @JsonKey(name: 'variations')
  StringLocalizationVariationDto? get variation;

  /// Create a copy of StringLocalizationSubstitutionsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringLocalizationSubstitutionsDtoImplCopyWith<
          _$StringLocalizationSubstitutionsDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

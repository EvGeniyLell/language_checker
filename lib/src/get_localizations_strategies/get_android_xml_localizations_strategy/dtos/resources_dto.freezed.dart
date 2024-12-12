// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resources_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResourcesDto _$ResourcesDtoFromJson(Map<String, dynamic> json) {
  return _ResourcesDto.fromJson(json);
}

/// @nodoc
mixin _$ResourcesDto {
  @JsonKey(name: 'string')
  List<ResourceStringDto> get strings => throw _privateConstructorUsedError;
  List<ResourcePluralDto> get plurals => throw _privateConstructorUsedError;

  /// Serializes this ResourcesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResourcesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourcesDtoCopyWith<ResourcesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcesDtoCopyWith<$Res> {
  factory $ResourcesDtoCopyWith(
          ResourcesDto value, $Res Function(ResourcesDto) then) =
      _$ResourcesDtoCopyWithImpl<$Res, ResourcesDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'string') List<ResourceStringDto> strings,
      List<ResourcePluralDto> plurals});
}

/// @nodoc
class _$ResourcesDtoCopyWithImpl<$Res, $Val extends ResourcesDto>
    implements $ResourcesDtoCopyWith<$Res> {
  _$ResourcesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourcesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strings = null,
    Object? plurals = null,
  }) {
    return _then(_value.copyWith(
      strings: null == strings
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as List<ResourceStringDto>,
      plurals: null == plurals
          ? _value.plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as List<ResourcePluralDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourcesDtoImplCopyWith<$Res>
    implements $ResourcesDtoCopyWith<$Res> {
  factory _$$ResourcesDtoImplCopyWith(
          _$ResourcesDtoImpl value, $Res Function(_$ResourcesDtoImpl) then) =
      __$$ResourcesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'string') List<ResourceStringDto> strings,
      List<ResourcePluralDto> plurals});
}

/// @nodoc
class __$$ResourcesDtoImplCopyWithImpl<$Res>
    extends _$ResourcesDtoCopyWithImpl<$Res, _$ResourcesDtoImpl>
    implements _$$ResourcesDtoImplCopyWith<$Res> {
  __$$ResourcesDtoImplCopyWithImpl(
      _$ResourcesDtoImpl _value, $Res Function(_$ResourcesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourcesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strings = null,
    Object? plurals = null,
  }) {
    return _then(_$ResourcesDtoImpl(
      strings: null == strings
          ? _value._strings
          : strings // ignore: cast_nullable_to_non_nullable
              as List<ResourceStringDto>,
      plurals: null == plurals
          ? _value._plurals
          : plurals // ignore: cast_nullable_to_non_nullable
              as List<ResourcePluralDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourcesDtoImpl implements _ResourcesDto {
  const _$ResourcesDtoImpl(
      {@JsonKey(name: 'string') required final List<ResourceStringDto> strings,
      required final List<ResourcePluralDto> plurals})
      : _strings = strings,
        _plurals = plurals;

  factory _$ResourcesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourcesDtoImplFromJson(json);

  final List<ResourceStringDto> _strings;
  @override
  @JsonKey(name: 'string')
  List<ResourceStringDto> get strings {
    if (_strings is EqualUnmodifiableListView) return _strings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strings);
  }

  final List<ResourcePluralDto> _plurals;
  @override
  List<ResourcePluralDto> get plurals {
    if (_plurals is EqualUnmodifiableListView) return _plurals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plurals);
  }

  @override
  String toString() {
    return 'ResourcesDto(strings: $strings, plurals: $plurals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourcesDtoImpl &&
            const DeepCollectionEquality().equals(other._strings, _strings) &&
            const DeepCollectionEquality().equals(other._plurals, _plurals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_strings),
      const DeepCollectionEquality().hash(_plurals));

  /// Create a copy of ResourcesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourcesDtoImplCopyWith<_$ResourcesDtoImpl> get copyWith =>
      __$$ResourcesDtoImplCopyWithImpl<_$ResourcesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourcesDtoImplToJson(
      this,
    );
  }
}

abstract class _ResourcesDto implements ResourcesDto {
  const factory _ResourcesDto(
      {@JsonKey(name: 'string') required final List<ResourceStringDto> strings,
      required final List<ResourcePluralDto> plurals}) = _$ResourcesDtoImpl;

  factory _ResourcesDto.fromJson(Map<String, dynamic> json) =
      _$ResourcesDtoImpl.fromJson;

  @override
  @JsonKey(name: 'string')
  List<ResourceStringDto> get strings;
  @override
  List<ResourcePluralDto> get plurals;

  /// Create a copy of ResourcesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourcesDtoImplCopyWith<_$ResourcesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_plural_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResourcePluralDto _$ResourcePluralDtoFromJson(Map<String, dynamic> json) {
  return _ResourcePluralDto.fromJson(json);
}

/// @nodoc
mixin _$ResourcePluralDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'item')
  List<ResourcePluralItemDto> get items => throw _privateConstructorUsedError;

  /// Serializes this ResourcePluralDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResourcePluralDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourcePluralDtoCopyWith<ResourcePluralDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcePluralDtoCopyWith<$Res> {
  factory $ResourcePluralDtoCopyWith(
          ResourcePluralDto value, $Res Function(ResourcePluralDto) then) =
      _$ResourcePluralDtoCopyWithImpl<$Res, ResourcePluralDto>;
  @useResult
  $Res call(
      {String name, @JsonKey(name: 'item') List<ResourcePluralItemDto> items});
}

/// @nodoc
class _$ResourcePluralDtoCopyWithImpl<$Res, $Val extends ResourcePluralDto>
    implements $ResourcePluralDtoCopyWith<$Res> {
  _$ResourcePluralDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourcePluralDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ResourcePluralItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourcePluralDtoImplCopyWith<$Res>
    implements $ResourcePluralDtoCopyWith<$Res> {
  factory _$$ResourcePluralDtoImplCopyWith(_$ResourcePluralDtoImpl value,
          $Res Function(_$ResourcePluralDtoImpl) then) =
      __$$ResourcePluralDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, @JsonKey(name: 'item') List<ResourcePluralItemDto> items});
}

/// @nodoc
class __$$ResourcePluralDtoImplCopyWithImpl<$Res>
    extends _$ResourcePluralDtoCopyWithImpl<$Res, _$ResourcePluralDtoImpl>
    implements _$$ResourcePluralDtoImplCopyWith<$Res> {
  __$$ResourcePluralDtoImplCopyWithImpl(_$ResourcePluralDtoImpl _value,
      $Res Function(_$ResourcePluralDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourcePluralDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_$ResourcePluralDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ResourcePluralItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourcePluralDtoImpl implements _ResourcePluralDto {
  const _$ResourcePluralDtoImpl(
      {required this.name,
      @JsonKey(name: 'item') required final List<ResourcePluralItemDto> items})
      : _items = items;

  factory _$ResourcePluralDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourcePluralDtoImplFromJson(json);

  @override
  final String name;
  final List<ResourcePluralItemDto> _items;
  @override
  @JsonKey(name: 'item')
  List<ResourcePluralItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ResourcePluralDto(name: $name, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourcePluralDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ResourcePluralDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourcePluralDtoImplCopyWith<_$ResourcePluralDtoImpl> get copyWith =>
      __$$ResourcePluralDtoImplCopyWithImpl<_$ResourcePluralDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourcePluralDtoImplToJson(
      this,
    );
  }
}

abstract class _ResourcePluralDto implements ResourcePluralDto {
  const factory _ResourcePluralDto(
          {required final String name,
          @JsonKey(name: 'item')
          required final List<ResourcePluralItemDto> items}) =
      _$ResourcePluralDtoImpl;

  factory _ResourcePluralDto.fromJson(Map<String, dynamic> json) =
      _$ResourcePluralDtoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'item')
  List<ResourcePluralItemDto> get items;

  /// Create a copy of ResourcePluralDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourcePluralDtoImplCopyWith<_$ResourcePluralDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResourcePluralItemDto _$ResourcePluralItemDtoFromJson(
    Map<String, dynamic> json) {
  return _ResourcePluralItemDto.fromJson(json);
}

/// @nodoc
mixin _$ResourcePluralItemDto {
  String get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: r'$t')
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ResourcePluralItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResourcePluralItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourcePluralItemDtoCopyWith<ResourcePluralItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcePluralItemDtoCopyWith<$Res> {
  factory $ResourcePluralItemDtoCopyWith(ResourcePluralItemDto value,
          $Res Function(ResourcePluralItemDto) then) =
      _$ResourcePluralItemDtoCopyWithImpl<$Res, ResourcePluralItemDto>;
  @useResult
  $Res call({String quantity, @JsonKey(name: r'$t') String message});
}

/// @nodoc
class _$ResourcePluralItemDtoCopyWithImpl<$Res,
        $Val extends ResourcePluralItemDto>
    implements $ResourcePluralItemDtoCopyWith<$Res> {
  _$ResourcePluralItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResourcePluralItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourcePluralItemDtoImplCopyWith<$Res>
    implements $ResourcePluralItemDtoCopyWith<$Res> {
  factory _$$ResourcePluralItemDtoImplCopyWith(
          _$ResourcePluralItemDtoImpl value,
          $Res Function(_$ResourcePluralItemDtoImpl) then) =
      __$$ResourcePluralItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quantity, @JsonKey(name: r'$t') String message});
}

/// @nodoc
class __$$ResourcePluralItemDtoImplCopyWithImpl<$Res>
    extends _$ResourcePluralItemDtoCopyWithImpl<$Res,
        _$ResourcePluralItemDtoImpl>
    implements _$$ResourcePluralItemDtoImplCopyWith<$Res> {
  __$$ResourcePluralItemDtoImplCopyWithImpl(_$ResourcePluralItemDtoImpl _value,
      $Res Function(_$ResourcePluralItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResourcePluralItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? message = null,
  }) {
    return _then(_$ResourcePluralItemDtoImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
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
class _$ResourcePluralItemDtoImpl implements _ResourcePluralItemDto {
  const _$ResourcePluralItemDtoImpl(
      {required this.quantity, @JsonKey(name: r'$t') required this.message});

  factory _$ResourcePluralItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourcePluralItemDtoImplFromJson(json);

  @override
  final String quantity;
  @override
  @JsonKey(name: r'$t')
  final String message;

  @override
  String toString() {
    return 'ResourcePluralItemDto(quantity: $quantity, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourcePluralItemDtoImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, message);

  /// Create a copy of ResourcePluralItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourcePluralItemDtoImplCopyWith<_$ResourcePluralItemDtoImpl>
      get copyWith => __$$ResourcePluralItemDtoImplCopyWithImpl<
          _$ResourcePluralItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourcePluralItemDtoImplToJson(
      this,
    );
  }
}

abstract class _ResourcePluralItemDto implements ResourcePluralItemDto {
  const factory _ResourcePluralItemDto(
          {required final String quantity,
          @JsonKey(name: r'$t') required final String message}) =
      _$ResourcePluralItemDtoImpl;

  factory _ResourcePluralItemDto.fromJson(Map<String, dynamic> json) =
      _$ResourcePluralItemDtoImpl.fromJson;

  @override
  String get quantity;
  @override
  @JsonKey(name: r'$t')
  String get message;

  /// Create a copy of ResourcePluralItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourcePluralItemDtoImplCopyWith<_$ResourcePluralItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

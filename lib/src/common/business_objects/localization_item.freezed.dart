// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalizationItem _$LocalizationItemFromJson(Map<String, dynamic> json) {
  return _LocalizationItem.fromJson(json);
}

/// @nodoc
mixin _$LocalizationItem {
  String get key => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<LocalizationItemArgument> get arguments =>
      throw _privateConstructorUsedError;

  /// Serializes this LocalizationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationItemCopyWith<LocalizationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationItemCopyWith<$Res> {
  factory $LocalizationItemCopyWith(
          LocalizationItem value, $Res Function(LocalizationItem) then) =
      _$LocalizationItemCopyWithImpl<$Res, LocalizationItem>;
  @useResult
  $Res call(
      {String key, String message, List<LocalizationItemArgument> arguments});
}

/// @nodoc
class _$LocalizationItemCopyWithImpl<$Res, $Val extends LocalizationItem>
    implements $LocalizationItemCopyWith<$Res> {
  _$LocalizationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? message = null,
    Object? arguments = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<LocalizationItemArgument>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizationItemImplCopyWith<$Res>
    implements $LocalizationItemCopyWith<$Res> {
  factory _$$LocalizationItemImplCopyWith(_$LocalizationItemImpl value,
          $Res Function(_$LocalizationItemImpl) then) =
      __$$LocalizationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key, String message, List<LocalizationItemArgument> arguments});
}

/// @nodoc
class __$$LocalizationItemImplCopyWithImpl<$Res>
    extends _$LocalizationItemCopyWithImpl<$Res, _$LocalizationItemImpl>
    implements _$$LocalizationItemImplCopyWith<$Res> {
  __$$LocalizationItemImplCopyWithImpl(_$LocalizationItemImpl _value,
      $Res Function(_$LocalizationItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? message = null,
    Object? arguments = null,
  }) {
    return _then(_$LocalizationItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<LocalizationItemArgument>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationItemImpl implements _LocalizationItem {
  const _$LocalizationItemImpl(
      {required this.key,
      required this.message,
      required final List<LocalizationItemArgument> arguments})
      : _arguments = arguments;

  factory _$LocalizationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizationItemImplFromJson(json);

  @override
  final String key;
  @override
  final String message;
  final List<LocalizationItemArgument> _arguments;
  @override
  List<LocalizationItemArgument> get arguments {
    if (_arguments is EqualUnmodifiableListView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arguments);
  }

  @override
  String toString() {
    return 'LocalizationItem(key: $key, message: $message, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, message,
      const DeepCollectionEquality().hash(_arguments));

  /// Create a copy of LocalizationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationItemImplCopyWith<_$LocalizationItemImpl> get copyWith =>
      __$$LocalizationItemImplCopyWithImpl<_$LocalizationItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizationItemImplToJson(
      this,
    );
  }
}

abstract class _LocalizationItem implements LocalizationItem {
  const factory _LocalizationItem(
          {required final String key,
          required final String message,
          required final List<LocalizationItemArgument> arguments}) =
      _$LocalizationItemImpl;

  factory _LocalizationItem.fromJson(Map<String, dynamic> json) =
      _$LocalizationItemImpl.fromJson;

  @override
  String get key;
  @override
  String get message;
  @override
  List<LocalizationItemArgument> get arguments;

  /// Create a copy of LocalizationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationItemImplCopyWith<_$LocalizationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Localization _$LocalizationFromJson(Map<String, dynamic> json) {
  return _Localization.fromJson(json);
}

/// @nodoc
mixin _$Localization {
  String get languageKey => throw _privateConstructorUsedError;
  List<LocalizationItem> get items => throw _privateConstructorUsedError;

  /// Serializes this Localization to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Localization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationCopyWith<Localization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationCopyWith<$Res> {
  factory $LocalizationCopyWith(
          Localization value, $Res Function(Localization) then) =
      _$LocalizationCopyWithImpl<$Res, Localization>;
  @useResult
  $Res call({String languageKey, List<LocalizationItem> items});
}

/// @nodoc
class _$LocalizationCopyWithImpl<$Res, $Val extends Localization>
    implements $LocalizationCopyWith<$Res> {
  _$LocalizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Localization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageKey = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      languageKey: null == languageKey
          ? _value.languageKey
          : languageKey // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LocalizationItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizationImplCopyWith<$Res>
    implements $LocalizationCopyWith<$Res> {
  factory _$$LocalizationImplCopyWith(
          _$LocalizationImpl value, $Res Function(_$LocalizationImpl) then) =
      __$$LocalizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String languageKey, List<LocalizationItem> items});
}

/// @nodoc
class __$$LocalizationImplCopyWithImpl<$Res>
    extends _$LocalizationCopyWithImpl<$Res, _$LocalizationImpl>
    implements _$$LocalizationImplCopyWith<$Res> {
  __$$LocalizationImplCopyWithImpl(
      _$LocalizationImpl _value, $Res Function(_$LocalizationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Localization
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageKey = null,
    Object? items = null,
  }) {
    return _then(_$LocalizationImpl(
      languageKey: null == languageKey
          ? _value.languageKey
          : languageKey // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<LocalizationItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalizationImpl extends _Localization {
  const _$LocalizationImpl(
      {required this.languageKey, required final List<LocalizationItem> items})
      : _items = items,
        super._();

  factory _$LocalizationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalizationImplFromJson(json);

  @override
  final String languageKey;
  final List<LocalizationItem> _items;
  @override
  List<LocalizationItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Localization(languageKey: $languageKey, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationImpl &&
            (identical(other.languageKey, languageKey) ||
                other.languageKey == languageKey) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, languageKey, const DeepCollectionEquality().hash(_items));

  /// Create a copy of Localization
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationImplCopyWith<_$LocalizationImpl> get copyWith =>
      __$$LocalizationImplCopyWithImpl<_$LocalizationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalizationImplToJson(
      this,
    );
  }
}

abstract class _Localization extends Localization {
  const factory _Localization(
      {required final String languageKey,
      required final List<LocalizationItem> items}) = _$LocalizationImpl;
  const _Localization._() : super._();

  factory _Localization.fromJson(Map<String, dynamic> json) =
      _$LocalizationImpl.fromJson;

  @override
  String get languageKey;
  @override
  List<LocalizationItem> get items;

  /// Create a copy of Localization
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationImplCopyWith<_$LocalizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

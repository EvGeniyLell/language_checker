// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_bundle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalizationBundle {
  BundleSource get source => throw _privateConstructorUsedError;
  List<Localization> get localizations => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationBundleCopyWith<LocalizationBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationBundleCopyWith<$Res> {
  factory $LocalizationBundleCopyWith(
          LocalizationBundle value, $Res Function(LocalizationBundle) then) =
      _$LocalizationBundleCopyWithImpl<$Res, LocalizationBundle>;
  @useResult
  $Res call({BundleSource source, List<Localization> localizations});
}

/// @nodoc
class _$LocalizationBundleCopyWithImpl<$Res, $Val extends LocalizationBundle>
    implements $LocalizationBundleCopyWith<$Res> {
  _$LocalizationBundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? localizations = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as BundleSource,
      localizations: null == localizations
          ? _value.localizations
          : localizations // ignore: cast_nullable_to_non_nullable
              as List<Localization>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalizationBundleImplCopyWith<$Res>
    implements $LocalizationBundleCopyWith<$Res> {
  factory _$$LocalizationBundleImplCopyWith(_$LocalizationBundleImpl value,
          $Res Function(_$LocalizationBundleImpl) then) =
      __$$LocalizationBundleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BundleSource source, List<Localization> localizations});
}

/// @nodoc
class __$$LocalizationBundleImplCopyWithImpl<$Res>
    extends _$LocalizationBundleCopyWithImpl<$Res, _$LocalizationBundleImpl>
    implements _$$LocalizationBundleImplCopyWith<$Res> {
  __$$LocalizationBundleImplCopyWithImpl(_$LocalizationBundleImpl _value,
      $Res Function(_$LocalizationBundleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalizationBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? localizations = null,
  }) {
    return _then(_$LocalizationBundleImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as BundleSource,
      localizations: null == localizations
          ? _value._localizations
          : localizations // ignore: cast_nullable_to_non_nullable
              as List<Localization>,
    ));
  }
}

/// @nodoc

class _$LocalizationBundleImpl extends _LocalizationBundle {
  const _$LocalizationBundleImpl(
      {required this.source, required final List<Localization> localizations})
      : _localizations = localizations,
        super._();

  @override
  final BundleSource source;
  final List<Localization> _localizations;
  @override
  List<Localization> get localizations {
    if (_localizations is EqualUnmodifiableListView) return _localizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localizations);
  }

  @override
  String toString() {
    return 'LocalizationBundle(source: $source, localizations: $localizations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationBundleImpl &&
            (identical(other.source, source) || other.source == source) &&
            const DeepCollectionEquality()
                .equals(other._localizations, _localizations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, source, const DeepCollectionEquality().hash(_localizations));

  /// Create a copy of LocalizationBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationBundleImplCopyWith<_$LocalizationBundleImpl> get copyWith =>
      __$$LocalizationBundleImplCopyWithImpl<_$LocalizationBundleImpl>(
          this, _$identity);
}

abstract class _LocalizationBundle extends LocalizationBundle {
  const factory _LocalizationBundle(
          {required final BundleSource source,
          required final List<Localization> localizations}) =
      _$LocalizationBundleImpl;
  const _LocalizationBundle._() : super._();

  @override
  BundleSource get source;
  @override
  List<Localization> get localizations;

  /// Create a copy of LocalizationBundle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationBundleImplCopyWith<_$LocalizationBundleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

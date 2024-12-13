// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_item_argument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizationItemArgumentImpl _$$LocalizationItemArgumentImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalizationItemArgumentImpl(
      position: LocalizationItemArgumentPosition.fromJson(
          json['position'] as Map<String, dynamic>),
      type: $enumDecode(_$LocalizationItemArgumentTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$LocalizationItemArgumentImplToJson(
        _$LocalizationItemArgumentImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'type': _$LocalizationItemArgumentTypeEnumMap[instance.type]!,
    };

const _$LocalizationItemArgumentTypeEnumMap = {
  LocalizationItemArgumentType.string: 'string',
  LocalizationItemArgumentType.int: 'int',
  LocalizationItemArgumentType.double: 'double',
};

_$LocalizationItemArgumentPositionImpl
    _$$LocalizationItemArgumentPositionImplFromJson(
            Map<String, dynamic> json) =>
        _$LocalizationItemArgumentPositionImpl(
          index: (json['index'] as num).toInt(),
          type: $enumDecode(
              _$LocalizationItemArgumentPositionTypeEnumMap, json['type']),
        );

Map<String, dynamic> _$$LocalizationItemArgumentPositionImplToJson(
        _$LocalizationItemArgumentPositionImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'type': _$LocalizationItemArgumentPositionTypeEnumMap[instance.type]!,
    };

const _$LocalizationItemArgumentPositionTypeEnumMap = {
  LocalizationItemArgumentPositionType.byTag: 'byTag',
  LocalizationItemArgumentPositionType.inOrder: 'inOrder',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_item_argument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizationItemArgumentImpl _$$LocalizationItemArgumentImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalizationItemArgumentImpl(
      tag: json['tag'] as String?,
      type: $enumDecode(_$LocalizationItemArgumentTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$LocalizationItemArgumentImplToJson(
        _$LocalizationItemArgumentImpl instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'type': _$LocalizationItemArgumentTypeEnumMap[instance.type]!,
    };

const _$LocalizationItemArgumentTypeEnumMap = {
  LocalizationItemArgumentType.string: 'string',
  LocalizationItemArgumentType.int: 'int',
  LocalizationItemArgumentType.double: 'double',
};

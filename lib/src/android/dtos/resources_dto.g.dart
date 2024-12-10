// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourcesDtoImpl _$$ResourcesDtoImplFromJson(Map<String, dynamic> json) =>
    _$ResourcesDtoImpl(
      strings: (json['string'] as List<dynamic>)
          .map((e) => ResourceStringDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      plurals: (json['plurals'] as List<dynamic>)
          .map((e) => ResourcePluralDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResourcesDtoImplToJson(_$ResourcesDtoImpl instance) =>
    <String, dynamic>{
      'string': instance.strings,
      'plurals': instance.plurals,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizationDtoImpl _$$LocalizationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalizationDtoImpl(
      sourceLanguage: json['sourceLanguage'] as String,
      strings: (json['strings'] as List<dynamic>)
          .map((e) => StringDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      version: json['version'] as String,
    );

Map<String, dynamic> _$$LocalizationDtoImplToJson(
        _$LocalizationDtoImpl instance) =>
    <String, dynamic>{
      'sourceLanguage': instance.sourceLanguage,
      'strings': instance.strings,
      'version': instance.version,
    };

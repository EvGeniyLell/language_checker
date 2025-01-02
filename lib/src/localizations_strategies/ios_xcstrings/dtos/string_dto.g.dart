// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StringDtoImpl _$$StringDtoImplFromJson(Map<String, dynamic> json) =>
    _$StringDtoImpl(
      key: json['key'] as String,
      comment: json['comment'] as String?,
      extractionState: json['extractionState'] as String?,
      localizations: (json['localizations'] as List<dynamic>)
          .map((e) => StringLocalizationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StringDtoImplToJson(_$StringDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'comment': instance.comment,
      'extractionState': instance.extractionState,
      'localizations': instance.localizations,
    };

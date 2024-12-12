// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_localization_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StringLocalizationDtoImpl _$$StringLocalizationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StringLocalizationDtoImpl(
      languageKey: json['key'] as String,
      stringUnit: json['stringUnit'] == null
          ? null
          : StringLocalizationUnitDto.fromJson(
              json['stringUnit'] as Map<String, dynamic>),
      variation: json['variations'] == null
          ? null
          : StringLocalizationVariationDto.fromJson(
              json['variations'] as Map<String, dynamic>),
      substitutions: (json['substitutions'] as List<dynamic>?)
          ?.map((e) => StringLocalizationSubstitutionsDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StringLocalizationDtoImplToJson(
        _$StringLocalizationDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.languageKey,
      'stringUnit': instance.stringUnit,
      'variations': instance.variation,
      'substitutions': instance.substitutions,
    };

_$StringLocalizationUnitDtoImpl _$$StringLocalizationUnitDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StringLocalizationUnitDtoImpl(
      state: json['state'] as String?,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$StringLocalizationUnitDtoImplToJson(
        _$StringLocalizationUnitDtoImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'value': instance.value,
    };

_$StringLocalizationVariationPluralDtoImpl
    _$$StringLocalizationVariationPluralDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StringLocalizationVariationPluralDtoImpl(
          key: json['key'] as String,
          stringUnit: StringLocalizationUnitDto.fromJson(
              json['stringUnit'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StringLocalizationVariationPluralDtoImplToJson(
        _$StringLocalizationVariationPluralDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'stringUnit': instance.stringUnit,
    };

_$StringLocalizationVariationDtoImpl
    _$$StringLocalizationVariationDtoImplFromJson(Map<String, dynamic> json) =>
        _$StringLocalizationVariationDtoImpl(
          plurals: (json['plural'] as List<dynamic>)
              .map((e) => StringLocalizationVariationPluralDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$StringLocalizationVariationDtoImplToJson(
        _$StringLocalizationVariationDtoImpl instance) =>
    <String, dynamic>{
      'plural': instance.plurals,
    };

_$StringLocalizationSubstitutionsDtoImpl
    _$$StringLocalizationSubstitutionsDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StringLocalizationSubstitutionsDtoImpl(
          key: json['key'] as String,
          argNum: (json['argNum'] as num).toInt(),
          formatSpecifier: json['formatSpecifier'] as String,
          variation: json['variations'] == null
              ? null
              : StringLocalizationVariationDto.fromJson(
                  json['variations'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StringLocalizationSubstitutionsDtoImplToJson(
        _$StringLocalizationSubstitutionsDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'argNum': instance.argNum,
      'formatSpecifier': instance.formatSpecifier,
      'variations': instance.variation,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizationImpl _$$LocalizationImplFromJson(Map<String, dynamic> json) =>
    _$LocalizationImpl(
      languageKey: json['languageKey'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => LocalizationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocalizationImplToJson(_$LocalizationImpl instance) =>
    <String, dynamic>{
      'languageKey': instance.languageKey,
      'items': instance.items,
    };

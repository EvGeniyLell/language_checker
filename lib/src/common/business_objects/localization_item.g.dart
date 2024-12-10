// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalizationItemImpl _$$LocalizationItemImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalizationItemImpl(
      key: json['key'] as String,
      message: json['message'] as String,
      arguments: (json['arguments'] as List<dynamic>)
          .map((e) =>
              LocalizationItemArgument.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocalizationItemImplToJson(
        _$LocalizationItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'message': instance.message,
      'arguments': instance.arguments,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_plural_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResourcePluralDtoImpl _$$ResourcePluralDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourcePluralDtoImpl(
      name: json['name'] as String,
      items: (json['item'] as List<dynamic>)
          .map((e) => ResourcePluralItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResourcePluralDtoImplToJson(
        _$ResourcePluralDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'item': instance.items,
    };

_$ResourcePluralItemDtoImpl _$$ResourcePluralItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResourcePluralItemDtoImpl(
      quantity: json['quantity'] as String,
      message: json[r'$t'] as String,
    );

Map<String, dynamic> _$$ResourcePluralItemDtoImplToJson(
        _$ResourcePluralItemDtoImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      r'$t': instance.message,
    };

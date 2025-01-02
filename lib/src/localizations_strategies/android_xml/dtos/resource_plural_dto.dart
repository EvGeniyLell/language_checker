import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_plural_dto.freezed.dart';
part 'resource_plural_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ResourcePluralDto with _$ResourcePluralDto {
  const factory ResourcePluralDto({
    required String name,
    @JsonKey(name: 'item') required List<ResourcePluralItemDto> items,
  }) = _ResourcePluralDto;

  factory ResourcePluralDto.fromJson(Map<String, dynamic> json) =>
      _$ResourcePluralDtoFromJson(json);
}

@freezed
class ResourcePluralItemDto with _$ResourcePluralItemDto {
  const factory ResourcePluralItemDto({
    required String quantity,
    @JsonKey(name: r'$t') required String message,
  }) = _ResourcePluralItemDto;

  factory ResourcePluralItemDto.fromJson(Map<String, dynamic> json) =>
      _$ResourcePluralItemDtoFromJson(json);
}

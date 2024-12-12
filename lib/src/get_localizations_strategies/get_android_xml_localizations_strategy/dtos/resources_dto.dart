import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_android_xml_localizations_strategy/dtos/resource_plural_dto.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_android_xml_localizations_strategy/dtos/resource_string_dto.dart';

part 'resources_dto.freezed.dart';
part 'resources_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ResourcesDto with _$ResourcesDto {
  const factory ResourcesDto({
    @JsonKey(name: 'string') required List<ResourceStringDto> strings,
    required List<ResourcePluralDto> plurals,
  }) = _ResourcesDto;

  factory ResourcesDto.fromJson(Map<String, dynamic> json) =>
      _$ResourcesDtoFromJson(json);
}

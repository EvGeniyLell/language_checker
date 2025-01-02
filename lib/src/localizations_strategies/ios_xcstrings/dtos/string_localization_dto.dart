import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_localization_dto.freezed.dart';
part 'string_localization_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class StringLocalizationDto with _$StringLocalizationDto {
  const factory StringLocalizationDto({
    @JsonKey(name: 'key') required String languageKey,
    required StringLocalizationUnitDto? stringUnit,
    @JsonKey(name: 'variations')
    required StringLocalizationVariationDto? variation,
    required List<StringLocalizationSubstitutionsDto>? substitutions,
  }) = _StringLocalizationDto;

  factory StringLocalizationDto.fromJson(Map<String, dynamic> json) =>
      _$StringLocalizationDtoFromJson(json);
}

@freezed
class StringLocalizationUnitDto with _$StringLocalizationUnitDto {
  const factory StringLocalizationUnitDto({
    required String? state,
    required String value,
  }) = _StringLocalizationUnitDto;

  factory StringLocalizationUnitDto.fromJson(Map<String, dynamic> json) =>
      _$StringLocalizationUnitDtoFromJson(json);
}

@freezed
class StringLocalizationVariationPluralDto
    with _$StringLocalizationVariationPluralDto {
  const factory StringLocalizationVariationPluralDto({
    required String key,
    required StringLocalizationUnitDto stringUnit,
  }) = _StringLocalizationVariationPluralDto;

  factory StringLocalizationVariationPluralDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StringLocalizationVariationPluralDtoFromJson(json);
}

@freezed
class StringLocalizationVariationDto with _$StringLocalizationVariationDto {
  const factory StringLocalizationVariationDto({
    @JsonKey(name: 'plural')
    required List<StringLocalizationVariationPluralDto> plurals,
  }) = _StringLocalizationVariationDto;

  factory StringLocalizationVariationDto.fromJson(Map<String, dynamic> json) =>
      _$StringLocalizationVariationDtoFromJson(json);
}

@freezed
class StringLocalizationSubstitutionsDto
    with _$StringLocalizationSubstitutionsDto {
  const factory StringLocalizationSubstitutionsDto({
    required String key,
    required int argNum,
    required String formatSpecifier,
    @JsonKey(name: 'variations')
    required StringLocalizationVariationDto? variation,
  }) = _StringLocalizationSubstitutionsDto;

  factory StringLocalizationSubstitutionsDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StringLocalizationSubstitutionsDtoFromJson(json);
}

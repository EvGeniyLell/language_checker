import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/localizations_strategies/ios_xcstrings/dtos/string_dto.dart';

part 'localization_dto.freezed.dart';
part 'localization_dto.g.dart';

@freezed
class LocalizationDto with _$LocalizationDto {
  const factory LocalizationDto({
    required String sourceLanguage,
    required List<StringDto> strings,
    required String version,
  }) = _LocalizationDto;

  factory LocalizationDto.fromJson(Map<String, dynamic> json) =>
      _$LocalizationDtoFromJson(json);
}

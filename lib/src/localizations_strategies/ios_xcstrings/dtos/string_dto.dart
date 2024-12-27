import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/localizations_strategies/ios_xcstrings/dtos/string_localization_dto.dart';

part 'string_dto.freezed.dart';
part 'string_dto.g.dart';

@freezed
class StringDto with _$StringDto {
  const factory StringDto({
    required String key,
    required String? comment,
    required String? extractionState,
    required List<StringLocalizationDto> localizations,
  }) = _StringDto;

  factory StringDto.fromJson(Map<String, dynamic> json) =>
      _$StringDtoFromJson(json);
}

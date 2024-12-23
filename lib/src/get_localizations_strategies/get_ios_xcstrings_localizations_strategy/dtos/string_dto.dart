import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_ios_xcstrings_localizations_strategy/dtos/string_localization_dto.dart';

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

// extension StringDtoToBos on StringDto {
//   LocalizationBundle toBos() {
//     return localizations.map((localization) {
//
//       print('### SU: ${localization.stringUnit}');
//       print('### VR: ${localization.variation}');
//       print('### SS: ${localization.substitutions}');
//
//       localization.
//       return Localization(
//         languageKey: localization.languageKey,
//         items: [
//           LocalizationItem(
//             key: localization.stringUnit,
//             variation: localization.variation,
//             substitutions: localization.substitutions,
//           ),
//           //localization
//         ],
//       );
//     }).toList();
//   }
// }

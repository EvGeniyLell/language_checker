import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_string_dto.freezed.dart';
part 'resource_string_dto.g.dart';

@freezed
class ResourceStringDto with _$ResourceStringDto {
  const factory ResourceStringDto({
    required String name,
    @JsonKey(name: r'$t') required String message,
  }) = _ResourceStringDto;

  factory ResourceStringDto.fromJson(Map<String, dynamic> json) =>
      _$ResourceStringDtoFromJson(json);
}

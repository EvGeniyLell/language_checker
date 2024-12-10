import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_item_argument.freezed.dart';
part 'localization_item_argument.g.dart';


@freezed
class LocalizationItemArgument with _$LocalizationItemArgument {
  const factory LocalizationItemArgument({
    required String? tag,
    required LocalizationItemArgumentType type,
  }) = _LocalizationItemArgument;

  factory LocalizationItemArgument.fromJson(Map<String, dynamic> json) =>
      _$LocalizationItemArgumentFromJson(json);
}

enum LocalizationItemArgumentType {
  string,
  int,
  double,
}

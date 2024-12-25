import 'package:languagechecker/src/common/common.dart';

export 'get_android_xml_localizations_strategy/get_android_xml_localizations_strategy.dart';
export 'get_ios_xcstrings_localizations_strategy/get_ios_xcstrings_localizations_strategy.dart';

// ignore_for_file: one_member_abstracts
abstract class GetLocalizationsStrategy {
  const GetLocalizationsStrategy();

  /// The uuid tag of the strategy.
  String get uuid;

  /// Get the localizations from the file.
  Task<LocalizationBundle> call(List<String> filePaths);
}

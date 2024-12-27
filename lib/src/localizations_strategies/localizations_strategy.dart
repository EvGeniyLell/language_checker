library;

import 'package:languagechecker/src/common/common.dart';

export 'android_xml/android_xml_localizations_strategy.dart';
export 'ios_xcstrings/ios_xcstrings_localizations_strategy.dart';

abstract class LocalizationsStrategy {
  const LocalizationsStrategy();

  /// The uuid tag of the strategy.
  String get uuid;

  /// Get the localizations from the file.
  Task<LocalizationBundle> call(List<String> filePaths);
}

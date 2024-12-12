import 'package:languagechecker/src/common/common.dart';

// ignore_for_file: one_member_abstracts
abstract class GetLocalizationsStrategy {
  const GetLocalizationsStrategy();

  /// Get the localizations from the file.
  Task<List<Localization>> call(String filepath);
}

import 'dart:io';

import 'package:languagechecker/languagechecker.dart' as languagechecker;

void main(List<String> arguments) {
  print('### Arguments: $arguments');
  print('### ${Directory.current.path}');
  print('Hello world: ${languagechecker.calculate()}!');
  const languagechecker.LanguageChecker()(arguments);
  print('### Done');
}

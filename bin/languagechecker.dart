import 'dart:io';

import 'package:languagechecker/languagechecker.dart';

Future<void> main(List<String> arguments) async {
  final exitReason = await const LanguageChecker()(arguments);
  exit(exitReason.code);
}

extension ExitReasonExtension on ExitReason {
  int get code => switch (this) {
        ExitReason.success => 0,
        ExitReason.runnersError => 1,
        ExitReason.loadingError => 2,
        ExitReason.comparisonError => 3,
      };
}

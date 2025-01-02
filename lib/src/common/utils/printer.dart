import 'dart:io';

import 'package:meta/meta.dart';

class Printer {
  @visibleForTesting
  static void Function(Object? object) output = stdout.writeln;
  static bool debug = false;

  static const _instance = Printer._private();

  factory Printer() => _instance;

  const Printer._private();

  void log(String log) {
    output(log);
  }

  void debugLogError(Object error, {StackTrace? stackTrace}) {
    if (debug) {
      output(
        'Error: $error'
        '${stackTrace != null ? '\nStack trace: $stackTrace' : ''}',
      );
    }
  }
}

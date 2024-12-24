import 'dart:io';

import 'package:meta/meta.dart';

class Printer {
  @visibleForTesting
  static void Function(Object? object) output = stdout.writeln;

  // static void toPrint() {
  //   // ignore: avoid_print
  //   output = ([String? message]) => print(message ?? '');
  // }

  static const _instance = Printer._private();

  factory Printer() => _instance;

  const Printer._private();

  void log(String log) {
    print(log);
  }

  void logError(Object error, {required StackTrace stackTrace}) {
    output('Error: $error\nStack trace: $stackTrace');
  }
}

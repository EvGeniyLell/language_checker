import 'dart:async';

import 'package:languagechecker/src/common/exceptions/exceptions.dart';
import 'package:languagechecker/src/common/utils/printer.dart';
import 'package:languagechecker/src/common/utils/task_result.dart' as task;

// --- AppTask ---
typedef TaskResult<T> = task.TaskResult<T, AppException>;
typedef TaskSucceeded<T> = task.TaskSucceeded<T, AppException>;
typedef TaskFailed<T> = task.TaskFailed<T, AppException>;
typedef Task<T> = Future<TaskResult<T>>;

Task<T> runTaskSafely<T>(
  FutureOr<T> Function() block,
) async {
  try {
    final T result = await block();
    return TaskSucceeded<T>(result);
  } on Object catch (error, stackTrace) {
    Printer().debugLogError(error, stackTrace: stackTrace);
    if (error is AppException) {
      return TaskFailed<T>(error);
    } else {
      return TaskFailed<T>(
        UnexpectedException(error.toString()),
      );
    }
  }
}

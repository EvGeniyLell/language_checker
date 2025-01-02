import 'dart:io';

import 'package:collection/collection.dart';
import 'package:languagechecker/src/common/business_objects/business_objects.dart';
import 'package:languagechecker/src/common/exceptions/exceptions.dart';
import 'package:languagechecker/src/common/utils/app_file_extension.dart';
import 'package:languagechecker/src/common/utils/app_task.dart';
import 'package:languagechecker/src/localizations_strategies/localizations_strategy.dart';
import 'package:meta/meta.dart';

class GetStrategyRunnersByArgumentsUseCase {
  @visibleForTesting
  static const List<LocalizationsStrategy> strategies = [
    AndroidXmlLocalizationsStrategy(),
    IosXcstringsLocalizationsStrategy(),
  ];

  const GetStrategyRunnersByArgumentsUseCase();

  Task<(StrategyRunner, StrategyRunner)> call(List<String> arguments) {
    return runTaskSafely(() async {
      return getRunners(arguments);
    });
  }

  @visibleForTesting
  (StrategyRunner, StrategyRunner) getRunners(List<String> arguments) {
    const prefix = '--';
    final List<StrategyRunner> runners = [];

    for (int index = 0; index < arguments.length; index++) {
      final argument = arguments[index];
      if (argument.startsWith(prefix)) {
        final uuid = argument.replaceFirst(prefix, '');
        final strategy = getStrategyByUUID(uuid);
        runners.add(StrategyRunner(strategy, []));
        continue;
      }
      if (runners.isEmpty) {
        throw UnexpectedException('Strategy not set yet.');
      }
      final file = getFileByArgument(argument);
      runners.last.files.add(file.path);
    }
    if (runners.length != 2) {
      throw UnexpectedException(
        'Expected exactly two strategies, '
        'but got ${runners.length}',
      );
    }
    return (runners[0], runners[1]);
  }

  @visibleForTesting
  LocalizationsStrategy getStrategyByUUID(String uuid) {
    final strategy = strategies.firstWhereOrNull(
      (strategy) => strategy.uuid == uuid,
    );
    if (strategy == null) {
      throw UnexpectedException('Unsupported Strategy $uuid');
    }
    return strategy;
  }

  @visibleForTesting
  File getFileByArgument(String argument) {
    final file = File(argument).toDirectoryCurrentPathRelated();
    if (file.existsSync()) {
      return file;
    }
    throw UnexpectedException('File dont exist: $file');
  }
}

@visibleForTesting
class StrategyRunner {
  final LocalizationsStrategy strategy;
  final List<String> files;

  StrategyRunner(this.strategy, this.files);

  Task<LocalizationBundle> call() => strategy(files);

  @override
  String toString() => 'Strategy: ${strategy.uuid}, Files: $files';
}

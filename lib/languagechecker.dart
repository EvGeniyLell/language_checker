import 'dart:io';

import 'package:collection/collection.dart';
import 'package:languagechecker/src/common/common.dart';
import 'package:languagechecker/src/get_localizations_strategies/get_localizations_strategy.dart';
import 'package:meta/meta.dart';

int calculate() {
  return 6 * 7;
}

class LanguageChecker {
  @visibleForTesting
  static const List<GetLocalizationsStrategy> strategies = [
    GetAndroidXmlLocalizationsStrategy(),
    GetIosXcstringsLocalizationsStrategy(),
  ];

  const LanguageChecker();

  Future<void> call(List<String> arguments) async {
    final (lStrategyRunner, rStrategyRunner) =
        getStrategiesRunnersByArguments(arguments);
    final lLocalizationTask = await lStrategyRunner();
    if (lLocalizationTask.failed) {
      Printer().log(lLocalizationTask.exception.toString());
      return;
    }
    final lLocalizationBundle = lLocalizationTask.data;

    final rLocalizationTask = await rStrategyRunner();
    if (rLocalizationTask.failed) {
      Printer().log(rLocalizationTask.exception.toString());
      return;
    }
    final rLocalizationBundle = rLocalizationTask.data;

    final result = await const ComparisonUseCase()(
      lLocalizationBundle,
      rLocalizationBundle,
    );

    if (result.failed) {
      Printer().log(result.exception.toString());
    } else {
      Printer().log('All Ok.');
    }
  }

  @visibleForTesting
  (StrategyRunner, StrategyRunner) getStrategiesRunnersByArguments(
    List<String> arguments,
  ) {
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
  GetLocalizationsStrategy getStrategyByUUID(String uuid) {
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
  final GetLocalizationsStrategy strategy;
  final List<String> files;

  StrategyRunner(this.strategy, this.files);

  Task<LocalizationBundle> call() => strategy(files);

  @override
  String toString() => 'Strategy: ${strategy.uuid}, Files: $files';
}

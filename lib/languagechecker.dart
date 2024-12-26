import 'package:languagechecker/src/common/common.dart';

class LanguageChecker {
  final GetStrategyRunnersByArgumentsUseCase getStrategiesRunnersByArguments;
  final ComparisonUseCase comparisonUseCase;

  const LanguageChecker({
    this.getStrategiesRunnersByArguments =
        const GetStrategyRunnersByArgumentsUseCase(),
    this.comparisonUseCase = const ComparisonUseCase(),
  });

  Future<ExitReason> call(List<String> arguments) async {
    final runnersResult = await getStrategiesRunnersByArguments(arguments);

    if (runnersResult.failed) {
      Printer().log('${runnersResult.exception}');
      return ExitReason.runnersError;
    }

    final (lStrategyRunner, rStrategyRunner) = runnersResult.data;

    final List<LocalizationBundle> localizationBundles = [];
    for (final runner in [lStrategyRunner, rStrategyRunner]) {
      final localizationTask = await runner();
      if (localizationTask.failed) {
        Printer().log('${localizationTask.exception}');
        return ExitReason.loadingError;
      }
      localizationBundles.add(localizationTask.data);
    }

    final comparisonResult =
        await comparisonUseCase(localizationBundles[0], localizationBundles[1]);

    if (comparisonResult.failed) {
      Printer().log(comparisonResult.exception.toString());
      return ExitReason.comparisonError;
    }

    Printer().log('All Ok.');
    return ExitReason.success;
  }
}

enum ExitReason {
  success,
  runnersError,
  loadingError,
  comparisonError,
}

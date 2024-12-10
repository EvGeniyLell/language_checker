import 'package:languagechecker/src/common/business_objects/business_objects.dart';
import 'package:languagechecker/src/common/utils/task.dart';
import 'package:meta/meta.dart';
// import 'package:share_localisation/exceptions/exceptions.dart';
// import 'package:share_localisation/utils/common.dart';
// import 'package:share_localisation/utils/json_data.dart';

class LocalisationLoaderUseCase {
  const LocalisationLoaderUseCase();

  Task<Localization> call(String filepath) {
    return runTaskSafely(() async {
      // final data = await JsonData.fromFile(filepath, buildDto: buildDto);
      // return buildDto<LocalisationDto>(data);
      throw UnimplementedError();
    });
  }
}


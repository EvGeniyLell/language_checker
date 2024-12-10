import 'dart:convert';
import 'dart:io';

import 'package:languagechecker/src/android/dtos/dtos.dart';
import 'package:languagechecker/src/common/common.dart';
import 'package:xml2json/xml2json.dart';
import 'package:path/path.dart' as path;

class AndroidLocalizationLoaderUseCase {
  const AndroidLocalizationLoaderUseCase();

  Task<Localization> call(String filepath) {
    return runTaskSafely(() async {
      final jsonMap = await jsonFromFile(filepath);
      final dto =  LocalizationDto.fromJson(jsonMap);
      final languageKey = getLanguageKeyFromFileName(filepath);
      return dto.toBo(languageKey: languageKey);
    });
  }

  Future<Map<String, dynamic>> jsonFromFile(String filepath) async {
    final rawContent = await File(filepath)
        .toDirectoryCurrentPathRelated()
        .readAsString();
    final xml = Xml2Json()..parse(rawContent);
    final jsonStringContent = xml.toGData();
    final jsonContent = jsonDecode(jsonStringContent);
    return jsonContent as Map<String, dynamic>;
  }

  String getLanguageKeyFromFileName(String filepath) {
    final name = path.basenameWithoutExtension(filepath);
    final language = RegExp(r'_(\w{2})$').firstMatch(name)?.group(1);
    return language ?? 'en';
  }
}

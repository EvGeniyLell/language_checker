import 'package:languagechecker/src/android/android.dart';
import 'package:languagechecker/src/common/common.dart';
import 'package:test/test.dart';

void main() {
  const loader = AndroidLocalizationLoaderUseCase();

  group('AndroidLocalizationLoaderUseCase', () {
    test('step by step', () async {
      final jsonResult = await runTaskSafely(() {
        return loader.jsonFromFile('test/sources/strings_a_en.xml');
      });
      expect(jsonResult.succeeded, isTrue);
      expect(jsonResult.data, isA<Map<String, dynamic>>());

      final dtoResult = await runTaskSafely(() {
        return LocalizationDto.fromJson(jsonResult.data);
      });
      expect(dtoResult.succeeded, isTrue);
      expect(dtoResult.data, isA<LocalizationDto>());
      expect(dtoResult.data.resources.strings, hasLength(2));
      expect(dtoResult.data.resources.plurals, hasLength(2));

      final boResult = await runTaskSafely(() {
        return dtoResult.data.toBo(languageKey: 'en');
      });
      expect(boResult.succeeded, isTrue);
      expect(boResult.data, isA<Localization>());
      expect(boResult.data.items, hasLength(4));
    });

    test('En - De', () async {
      final enTask = await loader('test/sources/strings_a_en.xml');
      expect(enTask.succeeded, isTrue);
      expect(enTask.data, isA<Localization>());

      final uaTask = await loader('test/sources/strings_a_ua.xml');
      expect(uaTask.succeeded, isTrue);
      expect(uaTask.data, isA<Localization>());

    });
  });
}

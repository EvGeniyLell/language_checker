import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:languagechecker/src/common/business_objects/localization.dart';
import 'package:languagechecker/src/common/utils/has_friendly_name.dart';
import 'package:path/path.dart';

part 'localization_bundle.freezed.dart';

@freezed
class LocalizationBundle with _$LocalizationBundle implements HasFriendlyName {
  const factory LocalizationBundle({
    required BundleSource source,
    required List<Localization> localizations,
  }) = _LocalizationBundle;

  const LocalizationBundle._();

  factory LocalizationBundle.androidXml({
    required List<String> paths,
    required List<Localization> localizations,
  }) {
    return LocalizationBundle(
      source: AndroidXmlBundleSource(paths),
      localizations: localizations,
    );
  }

  factory LocalizationBundle.iosXCString({
    required String path,
    required List<Localization> localizations,
  }) {
    return LocalizationBundle(
      source: IosXCStringBundleSource(path),
      localizations: localizations,
    );
  }

  @override
  String get friendlyName => source.friendlyName;
}

abstract class BundleSource {
  const BundleSource();

  String get friendlyName;
}

class AndroidXmlBundleSource extends BundleSource {
  /// List of paths to the Android `.xml` files.
  final List<String> paths;

  const AndroidXmlBundleSource(this.paths);

  @override
  String get friendlyName {
    return 'AndroidXmlBundleSource: ${paths.map(basename).join(', ')}';
  }
}

class IosXCStringBundleSource extends BundleSource {
  /// Path to the iOS `.xcstrings` file.
  final String path;

  const IosXCStringBundleSource(this.path);

  @override
  String get friendlyName {
    return 'IosXCStringBundleSource: ${basename(path)}';
  }
}

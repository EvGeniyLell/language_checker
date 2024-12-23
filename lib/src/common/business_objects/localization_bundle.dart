import 'package:languagechecker/src/common/business_objects/localization.dart';
import 'package:languagechecker/src/common/utils/has_friendly_name.dart';
import 'package:path/path.dart';

class LocalizationBundle implements HasFriendlyName {
  final BundleSource source;
  final List<Localization> localizations;

  const LocalizationBundle(this.source, this.localizations);

  factory LocalizationBundle.androidXml({
    required List<String> paths,
    required List<Localization> localizations,
  }) =>
      LocalizationBundle(AndroidXmlBundleSource(paths), localizations);

  factory LocalizationBundle.iosXCString({
    required String path,
    required List<Localization> localizations,
  }) =>
      LocalizationBundle(IosXCStringBundleSource(path), localizations);

  LocalizationBundle copyWith({
    BundleSource? source,
    List<Localization>? localizations,
  }) {
    return LocalizationBundle(
      source ?? this.source,
      localizations ?? this.localizations,
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

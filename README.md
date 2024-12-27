This application is a command-line tool named `languagechecker` 
that compares localization files for iOS and Android projects. 
It ensures that the localization strings are consistent across different languages and platforms.

Currently, it supports comparing `xcstrings` and `xml` files.

### Run
```bash
$languagechecker --iosXCStrings test/sources/FeatureA.json  --androidXml test/sources/strings_a_en.xml test/sources/strings_a_de.xml
```

### Example Loading Exceptions Results:
```bash
UnexpectedException: type 'Null' is not a subtype of type 'String' in type cast at ./resources/plurals[1]/item[2].quantity, in test/sources/strings_a_de.xml
```

### Example Comparing Exceptions Result:
```bash
MissingItemInLocalizationComparisonException: The item is missing: downloaded_files/de/AndroidXmlBundleSource: strings_a_[en|de].xml.
MissingArgumentInItemComparisonException: The argument is missing: Int:InOrder[2]/match_available/de/AndroidXmlBundleSource: strings_a_[en|de].xml.
ExtraArgumentInItemComparisonException: The argument is extra: Int:ByTag[3]/match_available/de/IosXCStringBundleSource: FeatureA.json.
```
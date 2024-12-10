import 'dart:io';

import 'package:test/test.dart';
import 'package:xml2json/xml2json.dart';

void main() {
  final xml = Xml2Json();

  test('EN Xml parse', () {
    final xmlContent = File('test/sources/strings_a_en.xml').readAsStringSync();
    xml.parse(xmlContent);
    // print('\n#toBadgerfish\n${xml.toBadgerfish()}');
    print('\n#toGData\n${xml.toGData()}');
    // print('\n#toParker\n${xml.toParker()}');
    // print('\n#toParkerWithAttrs\n${xml.toParkerWithAttrs()}');
    print('\n#toParkerWithAttrs\n${xml.toParkerWithAttrs(array: ['plurals'])}');
    //expect(jsonString, '{"foo":{"\$":"Hello: ","bar":"World"}}');
  });

  test('EN Xml parse', () {
    final xmlContent = File('test/sources/strings_a_ua.xml').readAsStringSync();
    xml.parse(xmlContent);
    // print('\n#toBadgerfish\n${xml.toBadgerfish()}');
    print('\n#toGData\n${xml.toGData()}');
    // print('\n#toParker\n${xml.toParker()}');
    // print('\n#toParkerWithAttrs\n${xml.toParkerWithAttrs()}');
    print('\n#toParkerWithAttrs\n${xml.toParkerWithAttrs(
      array: ['string', 'plurals'],
    )}');
    //expect(jsonString, '{"foo":{"\$":"Hello: ","bar":"World"}}');
  });
}

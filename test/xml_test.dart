import 'dart:io';

import 'package:languagechecker/src/common/common.dart';
import 'package:test/test.dart';
import 'package:xml2json/xml2json.dart';

void main() {
  final xml = Xml2Json();

  test('EN Xml parse', () {
    final xmlContent = File('test/sources/strings_a_en.xml').readAsStringSync();
    xml.parse(xmlContent);
    Printer()
      // ..log('\n#toBadgerfish\n${xml.toBadgerfish()}'),
      // ..log('\n#toParker\n${xml.toParker()}'),
      // ..log('\n#toParkerWithAttrs\n${xml.toParkerWithAttrs()}'),
      ..log('\n<GData>\n${xml.toGData()}\n</GData>')
      ..log('\n<ParkerWithAttrs>\n${xml.toParkerWithAttrs(
        array: ['plurals'],
      )}\n</ParkerWithAttrs>');
  });

  test('EN Xml parse', () {
    final xmlContent = File('test/sources/strings_a_ua.xml').readAsStringSync();
    xml.parse(xmlContent);
    Printer()
      // ..log('\n#toBadgerfish\n${xml.toBadgerfish()}'),
      // ..log('\n#toParker\n${xml.toParker()}');
      // ..log('\n#toParkerWithAttrs\n${xml.toParkerWithAttrs()}');
      ..log('\n<GData>\n${xml.toGData()}\n</GData>')
      ..log('\n<ParkerWithAttrs>\n${xml.toParkerWithAttrs(
        array: ['string', 'plurals'],
      )}\n</ParkerWithAttrs>');
  });
}

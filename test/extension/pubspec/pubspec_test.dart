import 'dart:io';

import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:test/test.dart';

void main() {
  group('HrkPubspec', () {
    group('getVersionMajorMinorPatch', () {
      test('Basic', () async {
        final pubspec = Pubspec.parse(
          await File('test/extension/pubspec/1.yaml').readAsString(),
        );
        expect(pubspec.getVersionMajorMinorPatch(), '2.0.0');
      });

      test('Null', () async {
        final pubspec = Pubspec.parse(
          await File('test/extension/pubspec/0.yaml').readAsString(),
        );
        expect(pubspec.getVersionMajorMinorPatch(), isNull);
      });
    });
  });
}

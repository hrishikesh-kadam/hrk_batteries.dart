import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('typedef', () {
    test('JsonMap', () {
      Map<String, dynamic> json = {};
      expect(json, isA<JsonMap>());
    });

    test('FromJsonFunction', () {
      dynamic fromJson(Map<String, dynamic> json) {}
      expect(fromJson.runtimeType, FromJsonFunction);
    });
  });
}

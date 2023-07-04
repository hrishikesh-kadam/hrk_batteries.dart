import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  test('Extension on String Unit Test', () async {
    expect('Lorem', 'LOREM'.capitalize());
    expect('Lorem', 'lorem'.capitalize());
    expect('L', 'l'.capitalize());
    expect('Lo', 'Lo'.capitalize());
    expect('Lorem', 'loRem'.capitalize());
    expect('', ''.capitalize());
  });
}

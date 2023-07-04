import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('extension HttpResponseStatusCode on int', () {
    expect(99.is1xx(), false);
    expect(100.is1xx(), true);
    expect(199.is1xx(), true);
    expect(200.is1xx(), false);

    expect(199.is2xx(), false);
    expect(200.is2xx(), true);
    expect(299.is2xx(), true);
    expect(300.is2xx(), false);

    expect(299.is3xx(), false);
    expect(300.is3xx(), true);
    expect(399.is3xx(), true);
    expect(400.is3xx(), false);

    expect(399.is4xx(), false);
    expect(400.is4xx(), true);
    expect(499.is4xx(), true);
    expect(500.is4xx(), false);

    expect(499.is5xx(), false);
    expect(500.is5xx(), true);
    expect(599.is5xx(), true);
    expect(600.is5xx(), false);
  });
}

import '../dart_test/dart_test.dart';
import '../flutter_test/flutter_test.dart';

bool isDartOrFlutterTest() => isDartTest() || isFlutterTest();

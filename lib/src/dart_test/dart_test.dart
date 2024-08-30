import 'dart_test_io.dart' if (dart.library.js_interop) 'dart_test_web.dart'
    as platform;

bool isDartTest() => platform.isDartTest();

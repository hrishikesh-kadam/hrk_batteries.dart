import 'dart_test_non_web.dart' if (dart.library.html) 'dart_test_web.dart'
    as platform;

bool isDartTest() => platform.isDartTest();

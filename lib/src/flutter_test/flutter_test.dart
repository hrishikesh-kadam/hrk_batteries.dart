import 'flutter_test_non_web.dart'
    if (dart.library.html) 'flutter_test_web.dart' as platform;

bool isFlutterTest() => platform.isFlutterTest();

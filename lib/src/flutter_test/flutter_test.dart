import 'flutter_test_non_web.dart'
    if (dart.library.html) 'flutter_test_web.dart' as platform;

// TODO(hrishikesh-kadam): Duplicate isFlutterTest() and isFlutterIntegrationTest()
// in hrk_flutter_batteries

bool isFlutterTest() => platform.isFlutterTest();

/// For Integration Test run as `flutter test` or `flutter drive`,
/// `FLUTTER_TEST` needs to be passed as --dart-define="FLUTTER_TEST=true"
bool isFlutterIntegrationTest() => const bool.fromEnvironment('FLUTTER_TEST');

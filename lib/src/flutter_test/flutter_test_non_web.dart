import 'dart:io';

/// For Unit and Widget Test run as `flutter test` or `flutter run`,
/// `FLUTTER_TEST` is set to true
/// For Integration Test run as `flutter test`,
/// `FLUTTER_TEST` needs to be passed as --dart-define="FLUTTER_TEST=true"
bool isFlutterTest() {
  // For Unit and Widget Test run as `flutter test` or `flutter run`,
  // `FLUTTER_TEST` is set to true
  final bool flutterTest = Platform.environment.containsKey('FLUTTER_TEST');
  if (flutterTest) {
    return true;
  }
  // For Integration Test run as `flutter test`,
  // `FLUTTER_TEST` needs to be passed as --dart-define="FLUTTER_TEST=true"
  return const bool.fromEnvironment('FLUTTER_TEST');
}

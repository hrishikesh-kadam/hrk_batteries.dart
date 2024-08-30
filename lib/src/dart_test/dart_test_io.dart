import 'dart:io';

/// Run command as `DART_TEST=true dart test`
bool isDartTest() => Platform.environment.containsKey('DART_TEST');

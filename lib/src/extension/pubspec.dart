import 'package:pubspec_parse/pubspec_parse.dart';

extension HrkPubspec on Pubspec {
  /// Returns version in 'major.minor.patch' format
  String? getVersionMajorMinorPatch() {
    if (version == null) {
      return null;
    }
    return '${version!.major}.${version!.minor}.${version!.patch}';
  }
}

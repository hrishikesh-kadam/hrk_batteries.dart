import 'package:hrk_batteries/hrk_batteries.dart';
import 'package:test/test.dart';

void main() {
  group('build_mode', () {
    group('constants', () {
      test('isReleaseMode', () {
        expect(isReleaseMode(), true);
        expect(isProfileMode(), false);
        expect(isDebugMode(), false);
      }, tags: ['with-release-env', 'non-default']);

      test('isProfileMode', () {
        expect(isReleaseMode(), false);
        expect(isProfileMode(), true);
        expect(isDebugMode(), false);
      }, tags: ['with-profile-env', 'non-default']);

      test('isDebugMode', () {
        expect(isReleaseMode(), false);
        expect(isProfileMode(), false);
        expect(isDebugMode(), true);
      });
    });

    group('getBuildModeString()', () {
      test('release', () {
        expect(getBuildModeString(), 'release');
      }, tags: ['with-release-env', 'non-default']);

      test('profile', () {
        expect(getBuildModeString(), 'profile');
      }, tags: ['with-profile-env', 'non-default']);

      test('kDebugMode', () {
        expect(getBuildModeString(), 'debug');
      });
    });
  });
}

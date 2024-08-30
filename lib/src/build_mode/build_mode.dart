import 'build_mode_io.dart' if (dart.library.js_interop) 'build_mode_web.dart'
    as platform;

const String releaseModeKey = 'dart.vm.product';
const String profileModeKey = 'dart.vm.profile';

bool isReleaseMode() => platform.isReleaseMode();
bool isProfileMode() => platform.isProfileMode();
bool isDebugMode() => !isReleaseMode() && !isProfileMode();

String getBuildModeString() {
  if (isReleaseMode()) {
    return 'release';
  } else if (isProfileMode()) {
    return 'profile';
  } else {
    return 'debug';
  }
}

import 'dart:io';

import 'build_mode.dart';

/// Run command as `env "dart.vm.product=true" dart test`
bool isReleaseMode() {
  return Platform.environment[releaseModeKey] == 'true' ||
      const bool.fromEnvironment(releaseModeKey);
}

/// Run command as `env "dart.vm.profile=true" dart test`
bool isProfileMode() {
  return Platform.environment[profileModeKey] == 'true' ||
      const bool.fromEnvironment(profileModeKey);
}

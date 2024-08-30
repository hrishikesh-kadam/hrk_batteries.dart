/// Run command as `env "dart.vm.product=true" dart test`
bool isReleaseMode() => const bool.fromEnvironment('dart.vm.product');

/// Run command as `env "dart.vm.profile=true" dart test`
bool isProfileMode() => const bool.fromEnvironment('dart.vm.profile');

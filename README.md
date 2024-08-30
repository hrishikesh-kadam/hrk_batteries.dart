[![ci][ci-badge]][ci-link]
[![pub package link][pub-badge]][pub-link]
[![codecov link][codecov-badge]][codecov-link]

A library to accumulate required dart helper and utility codes

## Features

- [`isDartOrFlutterTest()`]
- [`isFlutterTest()`]
- [`isFlutterIntegrationTest()`]
- Build Modes
  - [`isReleaseMode()`]
  - [`isProfileMode()`]
  - [`isDebugMode()`]
  - [`getBuildModeString()`]
- [`Unit`]
  - [`ValueUnit`]
  - [`ValueRange`]
  - [`Distance`]
    - [`DistanceUnit`]
    - [`DistanceRange`]
  - [`Velocity`]
    - [`VelocityUnit`]
- [`HrkDateTime`]
  - [`today()`]
  - [`todayUtc()`]
  - [`toDate()`]
- [`HrkString`]
  - [`capitalize()`]
  - [`localizeDigits()`]
- [`NetworkState`]

## Getting started

```console
dart pub add hrk_batteries
```

## Usage

```dart
import 'package:hrk_batteries/hrk_batteries.dart';

void main() {
  // Logger log = Logger();
  // late Level level;
  if (isDartOrFlutterTest()) {
    // level = Level.INFO;
  } else {
    // level = Level.SEVERE;
  }
  // log.log(level, 'Needs Attention');

  final DateTime today = HrkDateTime.today();
  final DateTime todayUtc = HrkDateTime.todayUtc();
  final DateTime date = DateTime.now().toDate();

  // A०१२३४५६७८९Z
  final String enToMrLocalizedString = 'A0123456789Z'.localizeDigits(
    toZeroDigit: '\u0966', // toZeroDigit: '०',
  );
}
```


[ci-badge]: https://github.com/hrishikesh-kadam/hrk_batteries.dart/actions/workflows/ci.yaml/badge.svg
[ci-link]: https://github.com/hrishikesh-kadam/hrk_batteries.dart/actions/workflows/ci.yaml
[pub-badge]: https://img.shields.io/pub/v/hrk_batteries.svg
[pub-link]: https://pub.dev/packages/hrk_batteries
[codecov-badge]: https://codecov.io/gh/hrishikesh-kadam/hrk_batteries.dart/branch/main/graph/badge.svg
[codecov-link]: https://codecov.io/gh/hrishikesh-kadam/hrk_batteries.dart
[`isDartOrFlutterTest()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/isDartOrFlutterTest.html
[`isFlutterTest()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/isFlutterTest.html
[`isFlutterIntegrationTest()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/isFlutterIntegrationTest.html
[`isReleaseMode()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/isReleaseMode.html
[`isProfileMode()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/isProfileMode.html
[`isDebugMode()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/isDebugMode.html
[`getBuildModeString()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/getBuildModeString.html
[`Unit`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/Unit-class.html
[`ValueUnit`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/ValueUnit-class.html
[`ValueRange`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/ValueRange-class.html
[`Distance`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/Distance.html
[`DistanceUnit`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/DistanceUnit-class.html
[`DistanceRange`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/DistanceRange.html
[`Velocity`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/Velocity.html
[`VelocityUnit`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/VelocityUnit-class.html
[`HrkDateTime`]: lib/src/extension/date_time.dart
[`today()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/HrkDateTime/today.html
[`todayUtc()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/HrkDateTime/todayUtc.html
[`toDate()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/HrkDateTime/toDate.html
[`HrkString`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/HrkString.html
[`capitalize()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/HrkString/capitalize.html
[`localizeDigits()`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/HrkString/localizeDigits.html
[`NetworkState`]: https://pub.dev/documentation/hrk_batteries/latest/hrk_batteries/NetworkState.html

[![ci](https://github.com/hrishikesh-kadam/hrk_batteries.dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/hrishikesh-kadam/hrk_batteries.dart/actions/workflows/ci.yaml)
[![codecov](https://codecov.io/gh/hrishikesh-kadam/hrk_batteries.dart/branch/main/graph/badge.svg)](https://codecov.io/gh/hrishikesh-kadam/hrk_batteries.dart)
[![pub package](https://img.shields.io/pub/v/hrk_batteries.svg)](https://pub.dev/packages/hrk_batteries)

A library to accumulate required dart helper and utility codes

## Features

- [`isDartOrFlutterTest()`]
- [`Unit`]
  - [`ValueUnit`]
  - [`ValueRange`]
  - [`Distance`]
    - `DistanceUnit`
    - `DistanceRange`
- [`HrkDateTime`]
  - `today()`
  - `todayUtc()`
  - `toDate()`

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

  final today = HrkDateTime.today();
  final todayUtc = HrkDateTime.todayUtc();
  final date = DateTime.now().toDate();
}
```

[`isDartOrFlutterTest()`]: lib/src/common_test/common_test.dart
[`Unit`]: lib/src/unit/unit.dart
[`ValueUnit`]: lib/src/unit/value_unit.dart
[`ValueRange`]: lib/src/unit/value_range.dart
[`Distance`]: lib/src/unit/distance.dart
[`HrkDateTime`]: lib/src/extension/date_time.dart

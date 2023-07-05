[![ci](https://github.com/hrishikesh-kadam/hrk_batteries.dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/hrishikesh-kadam/hrk_batteries.dart/actions/workflows/ci.yaml)
[![codecov](https://codecov.io/gh/hrishikesh-kadam/hrk_batteries.dart/branch/main/graph/badge.svg)](https://codecov.io/gh/hrishikesh-kadam/hrk_batteries.dart)
[![pub package](https://img.shields.io/pub/v/hrk_batteries.svg)](https://pub.dev/packages/hrk_batteries)

A library to accumulate required dart helper and utility codes

## Features

- Easy detection of whether code running in Test without hassle of conditional 
  imports files

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
}
```

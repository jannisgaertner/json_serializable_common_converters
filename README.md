# JSON Serializable Common Converters

A Dart package that provides common type converters for seamless integration between standard Dart types and JSON serializable classes using the `json_serializable` package.

## Features

- Type-safe conversions between JSON primitive types and Dart types
- DateTime converters:
  - Epoch converter (milliseconds since epoch)
  - ISO 8601 string format converter
  - Support for both nullable and non-nullable types
- Duration converters:
  - Milliseconds converter
  - Days converter 
  - Support for both nullable and non-nullable types

## Getting started

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  json_serializable_common_converters:
    git:
      url: https://github.com/jannisgaertner/json_serializable_common_converters.git
  json_serializable: ^6.9.4
  json_annotation: ^4.9.0

dev_dependencies:
  build_runner: ^2.4.15
```

## Usage

Import the package:

```dart
import 'package:json_serializable_common_converters/json_serializable_common_converters.dart';
```

### DateTime Converters

```dart
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable_common_converters/json_serializable_common_converters.dart';

part 'my_model.g.dart';

@JsonSerializable()
class MyModel {
  // Store DateTime as milliseconds since epoch
  @EpochDateTimeConverter()
  final DateTime createdAt;

  // Store DateTime as ISO 8601 string
  @IsoDateTimeConverter()
  final DateTime updatedAt;

  // Optional DateTime field
  @EpochDateTimeNullableConverter()
  final DateTime? deletedAt;

  MyModel({
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  factory MyModel.fromJson(Map<String, dynamic> json) => _$MyModelFromJson(json);
  Map<String, dynamic> toJson() => _$MyModelToJson(this);
}
```

### Duration Converters

```dart
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable_common_converters/json_serializable_common_converters.dart';

part 'time_model.g.dart';

@JsonSerializable()
class TimeModel {
  // Store Duration as milliseconds
  @DurationMillisecondsConverter()
  final Duration processingTime;

  // Store Duration as days
  @DurationDaysConverter()
  final Duration expirationPeriod;

  // Optional Duration field
  @DurationMillisecondsNullableConverter()
  final Duration? gracePeriod;

  TimeModel({
    required this.processingTime,
    required this.expirationPeriod,
    this.gracePeriod,
  });

  factory TimeModel.fromJson(Map<String, dynamic> json) => _$TimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$TimeModelToJson(this);
}
```

## Additional information

This package helps solve the common challenge of serializing standard Dart types like DateTime and Duration with `json_serializable`, making your code more type-safe when working with JSON data.

For issues and feature requests, please file them on the [GitHub repository](https://github.com/jannisgaertner/json_serializable_common_converters).

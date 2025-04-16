import 'package:json_annotation/json_annotation.dart';

/// Convert [Duration] to and from [int] (milliseconds).
class DurationMillisecondsConverter extends JsonConverter<Duration, int> {
  const DurationMillisecondsConverter();

  @override
  Duration fromJson(int json) => Duration(milliseconds: json);

  @override
  int toJson(Duration object) => object.inMilliseconds;
}

/// Convert [Duration] to and from [int?] (milliseconds).
class DurationMillisecondsNullableConverter
    implements JsonConverter<Duration?, int?> {
  const DurationMillisecondsNullableConverter();

  @override
  Duration? fromJson(int? json) =>
      json == null ? null : Duration(milliseconds: json);

  @override
  int? toJson(Duration? object) => object?.inMilliseconds;
}

/// Convert [Duration] to and from [int] (milliseconds).
class DurationDaysConverter extends JsonConverter<Duration, int> {
  const DurationDaysConverter();

  @override
  Duration fromJson(int json) => Duration(days: json);

  @override
  int toJson(Duration object) => object.inDays;
}

/// Convert [Duration] to and from [int?] (milliseconds).
class DurationDaysNullableConverter implements JsonConverter<Duration?, int?> {
  const DurationDaysNullableConverter();

  @override
  Duration? fromJson(int? json) => json == null ? null : Duration(days: json);

  @override
  int? toJson(Duration? object) => object?.inDays;
}

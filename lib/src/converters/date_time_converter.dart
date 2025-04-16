import 'package:json_annotation/json_annotation.dart';

/// Convert [DateTime] to and from [int] (milliseconds since epoch).
class EpochDateTimeConverter implements JsonConverter<DateTime, int> {
  const EpochDateTimeConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}

/// Convert [DateTime] to and from [int?] (milliseconds since epoch).
class EpochDateTimeNullableConverter implements JsonConverter<DateTime?, int?> {
  const EpochDateTimeNullableConverter();

  @override
  DateTime? fromJson(int? json) =>
      json == null ? null : DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int? toJson(DateTime? object) => object?.millisecondsSinceEpoch;
}

/// Convert [DateTime] to and from [String] (ISO 8601 format).
class IsoDateTimeConverter implements JsonConverter<DateTime, String> {
  const IsoDateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}

/// Convert [DateTime] to and from [String?] (ISO 8601 format).
class IsoDateTimeNullableConverter
    implements JsonConverter<DateTime?, String?> {
  const IsoDateTimeNullableConverter();

  @override
  DateTime? fromJson(String? json) =>
      json == null ? null : DateTime.parse(json);

  @override
  String? toJson(DateTime? object) => object?.toIso8601String();
}

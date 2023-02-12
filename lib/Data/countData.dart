import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'countData.freezed.dart';
part 'countData.g.dart';

@freezed
class CountData with _$CountData {
  const factory CountData({
    required int count,
    required int countUp,
    required int countDown,
  }) = _CountData;

  factory CountData.fromJson(Map<String, Object?> json)
  => _$CountDataFromJson(json);
}
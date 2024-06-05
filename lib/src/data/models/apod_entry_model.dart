// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/entities/apod_entry.dart';

part 'apod_entry_model.freezed.dart';
part 'apod_entry_model.g.dart';

@freezed
@HiveType(typeId: 0)
class APODEntryModel with _$APODEntryModel {
  const factory APODEntryModel({
    @HiveField(0) String? copyright,
    @HiveField(1) required String date,
    @HiveField(2) required String explanation,
    @HiveField(3) @JsonKey(name: 'media_type') required String mediaType,
    @HiveField(4)
    @JsonKey(name: 'service_version')
    required String serviceVersion,
    @HiveField(5) required String title,
    @HiveField(6) required String url,
  }) = _APODEntryModel;

  factory APODEntryModel.fromJson(Map<String, dynamic> json) =>
      _$APODEntryModelFromJson(json);
}

extension APODEntryModelExtension on APODEntryModel {
  APODEntry toEntity() {
    return APODEntry(
      copyright: copyright,
      date: DateTime.parse(date),
      explanation: explanation,
      mediaType: mediaType,
      serviceVersion: serviceVersion,
      title: title,
      url: url,
    );
  }
}

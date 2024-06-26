// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apod_entry_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class APODEntryModelAdapter extends TypeAdapter<APODEntryModel> {
  @override
  final int typeId = 0;

  @override
  APODEntryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return APODEntryModel(
      copyright: fields[0] as String?,
      date: fields[1] as String,
      explanation: fields[2] as String,
      mediaType: fields[3] as String,
      serviceVersion: fields[4] as String,
      title: fields[5] as String,
      url: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, APODEntryModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.copyright)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.explanation)
      ..writeByte(3)
      ..write(obj.mediaType)
      ..writeByte(4)
      ..write(obj.serviceVersion)
      ..writeByte(5)
      ..write(obj.title)
      ..writeByte(6)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is APODEntryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$APODEntryModelImpl _$$APODEntryModelImplFromJson(Map<String, dynamic> json) =>
    _$APODEntryModelImpl(
      copyright: json['copyright'] as String?,
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      mediaType: json['media_type'] as String,
      serviceVersion: json['service_version'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$APODEntryModelImplToJson(
        _$APODEntryModelImpl instance) =>
    <String, dynamic>{
      'copyright': instance.copyright,
      'date': instance.date,
      'explanation': instance.explanation,
      'media_type': instance.mediaType,
      'service_version': instance.serviceVersion,
      'title': instance.title,
      'url': instance.url,
    };

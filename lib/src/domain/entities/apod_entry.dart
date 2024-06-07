import 'package:equatable/equatable.dart';

class APODEntry extends Equatable {
  final String? copyright;
  final DateTime date;
  final String explanation;
  final String? mediaType;
  final String serviceVersion;
  final String title;
  final String url;

  const APODEntry({
    this.copyright,
    required this.date,
    required this.explanation,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
  });

  @override
  List<Object?> get props =>
      [date, explanation, mediaType, serviceVersion, title, url];
}

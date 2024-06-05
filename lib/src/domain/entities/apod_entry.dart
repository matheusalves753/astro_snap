class APODEntry {
  String? copyright;
  DateTime date;
  String explanation;
  String? mediaType;
  String serviceVersion;
  String title;
  String url;

  APODEntry({
    this.copyright,
    required this.date,
    required this.explanation,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
  });
}

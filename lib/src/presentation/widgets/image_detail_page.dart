import 'dart:io';

import 'package:astro_snap/src/domain/domain.dart';
import 'package:astro_snap/src/infrastructure/utils/dimension.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

@RoutePage()
class ImageDetailPage extends StatelessWidget {
  final APODEntry entry;

  const ImageDetailPage({
    super.key,
    required this.entry,
  });

  Future<File?> _getCachedImage(String url) async {
    final directory = await getApplicationDocumentsDirectory();
    final filename = url.split('/').last;
    final file = File('${directory.path}/$filename');
    return file.existsSync() ? file : null;
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat.yMMMMd(Localizations.localeOf(context).toString())
            .format(entry.date);

    return Scaffold(
      appBar: AppBar(
        title: Text(entry.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimension.sm),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: entry.mediaType == 'image'
                      ? FutureBuilder<File?>(
                          future: _getCachedImage(entry.url),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const CircularProgressIndicator();
                            } else if (snapshot.hasData &&
                                snapshot.data != null) {
                              return Image.file(snapshot.data!);
                            } else {
                              return CachedNetworkImage(
                                imageUrl: entry.url,
                                cacheManager: DefaultCacheManager(),
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Icon(
                                    Icons.broken_image,
                                    size: Dimension.scale(25)),
                              );
                            }
                          },
                        )
                      : Icon(Icons.broken_image, size: Dimension.scale(25)),
                ),
                Dimension.sm.vertical,
                Text(
                  formattedDate,
                  style: TextStyle(
                    fontSize: Dimension.sm,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
                Dimension.xs.vertical,
                Text(
                  entry.title,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Dimension.sm.vertical,
                Text(
                  entry.explanation,
                  style: const TextStyle(
                    fontSize: Dimension.sm,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

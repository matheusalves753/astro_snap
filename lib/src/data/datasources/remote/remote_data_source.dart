import 'dart:convert';
import 'dart:io';
import 'package:astro_snap/src/infrastructure/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:astro_snap/src/data/models/apod_entry_model.dart';

abstract interface class RemoteDataSource {
  Future<List<APODEntryModel>> getAstronomyPictures();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client _client;
  final String _baseUrl = 'https://api.nasa.gov/';
  final String _apiKey = '0ykFZWZPc2LEh9LZR4HEZco1gHYwDAXsvymNBMLt';

  RemoteDataSourceImpl(this._client);

  @override
  Future<List<APODEntryModel>> getAstronomyPictures() async {
    if (!(await ConnectivityUtils.hasConnectivity())) {
      var box = await Hive.openBox<APODEntryModel>('apod');
      return box.values.toList();
    }

    const path = 'planetary/apod';
    final url = '$_baseUrl$path?api_key=$_apiKey&count=10';

    try {
      final response = await _client.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        final images =
            jsonList.map((json) => APODEntryModel.fromJson(json)).toList();

        var box = await Hive.openBox<APODEntryModel>('apod');
        await box.clear();
        await box.addAll(images);

        return images;
      } else {
        throw Exception('Failed to load astronomy pictures');
      }
    } on SocketException {
      var box = await Hive.openBox<APODEntryModel>('apod');
      return box.values.toList();
    } catch (e) {
      rethrow;
    }
  }
}

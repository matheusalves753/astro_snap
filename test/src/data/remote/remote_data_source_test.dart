import 'dart:convert';
import 'dart:io';

import 'package:astro_snap/src/infrastructure/infrastructure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:astro_snap/src/data/models/apod_entry_model.dart';
import 'package:astro_snap/src/data/datasources/remote/remote_data_source.dart';

import 'remote_data_source_test.mocks.dart';

@GenerateMocks([
  http.Client,
  ConnectivityUtils,
  HiveInterface,
  Box,
  FileUtils,
])
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  late MockClient mockHttpClient;
  late MockConnectivityUtils connectivityUtils;
  late RemoteDataSourceImpl dataSource;
  late MockHiveInterface mockHive;
  late MockBox<APODEntryModel> hiveBox;
  late MockFileUtils fileUtils;

  setUp(() async {
    mockHttpClient = MockClient();
    connectivityUtils = MockConnectivityUtils();
    mockHive = MockHiveInterface();
    hiveBox = MockBox<APODEntryModel>();
    fileUtils = MockFileUtils();
    dataSource = RemoteDataSourceImpl(
      mockHttpClient,
      connectivityUtils,
      fileUtils,
    );

    await Hive.initFlutter();
  });

  group('RemoteDataSource Tests', () {
    const tAPODEntryModel = APODEntryModel(
      date: '2024-06-06',
      explanation: 'Test explanation',
      mediaType: 'image',
      serviceVersion: 'v1',
      title: 'Test title',
      url: 'https://test.com',
    );
    final List<APODEntryModel> tAPODEntryModelList = [tAPODEntryModel];

    test(
      'should perform a GET request',
      () async {
        when(mockHttpClient.get(any))
            .thenAnswer((_) async => http.Response('[]', 200));
        when(connectivityUtils.hasConnectivity()).thenAnswer((_) async => true);
        when(mockHive.openBox<APODEntryModel>('apod'))
            .thenAnswer((_) async => hiveBox);
        when(hiveBox.values).thenReturn(tAPODEntryModelList);

        when(fileUtils.getDocumentsDirectory())
            .thenAnswer((_) async => Directory('test'));

        await dataSource.getAstronomyPictures();

        verify(mockHttpClient.get(any));
      },
    );

    test(
      'should return list of APODEntryModel when the response code is 200',
      () async {
        when(mockHttpClient.get(any)).thenAnswer((_) async => http.Response(
            jsonEncode(
                tAPODEntryModelList.map((item) => item.toJson()).toList()),
            200));
        when(mockHive.openBox<APODEntryModel>('apod'))
            .thenAnswer((_) async => hiveBox);
        when(hiveBox.values).thenReturn(tAPODEntryModelList);

        final result = await dataSource.getAstronomyPictures();

        expect(result, equals(tAPODEntryModelList));
      },
    );

    test(
      'should throw an Exception when the response code is 404 or other',
      () async {
        when(mockHttpClient.get(any))
            .thenAnswer((_) async => http.Response('Not Found', 404));
        when(mockHive.openBox<APODEntryModel>('apod'))
            .thenAnswer((_) async => hiveBox);
        when(hiveBox.values).thenReturn(tAPODEntryModelList);

        final call = dataSource.getAstronomyPictures;

        expect(() => call(), throwsException);
      },
    );
  });
}

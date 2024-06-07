// import 'dart:convert';

// import 'package:astro_snap/src/infrastructure/infrastructure.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:http/http.dart' as http;
// import 'package:astro_snap/src/data/models/apod_entry_model.dart';
// import 'package:astro_snap/src/data/datasources/remote/remote_data_source.dart';

// import 'remote_data_source_test.mocks.dart';

// @GenerateMocks([http.Client, ConnectivityUtils])
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();

//   late MockClient mockHttpClient;
//   late RemoteDataSourceImpl dataSource;

//   setUp(() {
//     mockHttpClient = MockClient();
//     dataSource = RemoteDataSourceImpl(mockHttpClient);
//   });

//   group('getAstronomyPictures', () {
//     const tAPODEntryModel = APODEntryModel(
//       date: '2024-06-06',
//       explanation: 'Test explanation',
//       mediaType: 'image',
//       serviceVersion: 'v1',
//       title: 'Test title',
//       url: 'https://test.com',
//     );
//     final List<APODEntryModel> tAPODEntryModelList = [tAPODEntryModel];

//     test(
//       'should perform a GET request',
//       () async {
//         // arrange
//         when(mockHttpClient.get(any))
//             .thenAnswer((_) async => http.Response('[]', 200));

//         final mockConnectivityUtils = MockConnectivityUtils();
//         when(mockConnectivityUtils.hasConnectivity())
//             .thenAnswer((_) async => true);
//         // act
//         await dataSource.getAstronomyPictures();
//         // assert
//         verify(mockHttpClient.get(any));
//       },
//     );

//     test(
//       'should return list of APODEntryModel when the response code is 200',
//       () async {
//         // arrange
//         when(mockHttpClient.get(any)).thenAnswer((_) async => http.Response(
//             jsonEncode(
//                 tAPODEntryModelList.map((item) => item.toJson()).toList()),
//             200));
//         // act
//         final result = await dataSource.getAstronomyPictures();
//         // assert
//         expect(result, equals(tAPODEntryModelList));
//       },
//     );

//     test(
//       'should throw an Exception when the response code is 404 or other',
//       () async {
//         // arrange
//         when(mockHttpClient.get(any))
//             .thenAnswer((_) async => http.Response('Not Found', 404));
//         // act
//         final call = dataSource.getAstronomyPictures;
//         // assert
//         expect(() => call(), throwsException);
//       },
//     );
//   });
// }

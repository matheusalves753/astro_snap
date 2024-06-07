import 'package:astro_snap/src/data/data.dart';
import 'package:astro_snap/src/domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'apod_repository_test.mocks.dart';

@GenerateMocks([RemoteDataSource])
void main() {
  late MockRemoteDataSource mockRemoteDataSource;
  late APODRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    repository = APODRepositoryImpl(mockRemoteDataSource);
  });

  group('APODRepository Tests', () {
    const tAPODEntryModel = APODEntryModel(
      date: '2024-06-06',
      explanation: 'Test explanation',
      mediaType: 'image',
      serviceVersion: 'v1',
      title: 'Test title',
      url: 'https://test.com',
    );
    final List<APODEntryModel> tAPODEntryModelList = [tAPODEntryModel];
    final List<APODEntry> tAPODEntryList =
        tAPODEntryModelList.map((e) => e.toEntity()).toList();

    test(
      'should get list of APODEntry from the RemoteDataSource',
      () async {
        when(mockRemoteDataSource.getAstronomyPictures())
            .thenAnswer((_) async => tAPODEntryModelList);

        final result = await repository.getAstronomyPictures();

        expect(result, equals(tAPODEntryList));
        verify(mockRemoteDataSource.getAstronomyPictures());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );

    test(
      'should throw an exception when the call to RemoteDataSource is unsuccessful',
      () async {
        when(mockRemoteDataSource.getAstronomyPictures())
            .thenThrow(Exception('Failed to fetch data'));

        final call = repository.getAstronomyPictures();

        expect(() => call, throwsException);
        verify(mockRemoteDataSource.getAstronomyPictures());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );

    test(
      'should return an empty list when the RemoteDataSource returns an empty list',
      () async {
        when(mockRemoteDataSource.getAstronomyPictures())
            .thenAnswer((_) async => []);

        final result = await repository.getAstronomyPictures();

        expect(result, equals([]));
        verify(mockRemoteDataSource.getAstronomyPictures());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );

    test(
      'should throw a specific exception when the call to RemoteDataSource throws a specific exception',
      () async {
        when(mockRemoteDataSource.getAstronomyPictures())
            .thenThrow(const FormatException('Invalid format'));

        final call = repository.getAstronomyPictures();

        expect(() => call, throwsA(isA<FormatException>()));
        verify(mockRemoteDataSource.getAstronomyPictures());
        verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );
  });
}

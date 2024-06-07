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

  group('getAstronomyPictures', () {
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
  });
}

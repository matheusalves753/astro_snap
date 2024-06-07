import 'package:astro_snap/src/domain/entities/apod_entry.dart';
import 'package:astro_snap/src/domain/repositories/apod_repository.dart';
import 'package:astro_snap/src/domain/usecases/get_image_gallery_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_image_gallery_usecase_test.mocks.dart';

@GenerateMocks([APODRepository])
void main() {
  late GetImageGalleryUseCaseImpl useCase;
  late MockAPODRepository mockAPODRepository;

  setUp(() {
    mockAPODRepository = MockAPODRepository();
    useCase = GetImageGalleryUseCaseImpl(mockAPODRepository);
  });

  group('GetImageGalleryUseCase Tests', () {
    final tAPODEntryList = [
      APODEntry(
        date: DateTime.now(),
        explanation: 'Test Explanation',
        mediaType: 'image',
        serviceVersion: 'v1',
        title: 'Test Title',
        url: 'https://test.com',
      )
    ];
    test('should get list of APODEntry from the repository', () async {
      when(mockAPODRepository.getAstronomyPictures())
          .thenAnswer((_) async => tAPODEntryList);

      final result = await useCase.call();

      expect(result, tAPODEntryList);
      verify(mockAPODRepository.getAstronomyPictures());
      verifyNoMoreInteractions(mockAPODRepository);
    });

    test('should throw an exception when repository fails', () async {
      when(mockAPODRepository.getAstronomyPictures())
          .thenThrow(Exception('Failed to fetch data'));

      final call = useCase.call();

      expect(call, throwsA(isA<Exception>()));
      verify(mockAPODRepository.getAstronomyPictures());
      verifyNoMoreInteractions(mockAPODRepository);
    });

    test('should return an empty list when repository returns no data',
        () async {
      when(mockAPODRepository.getAstronomyPictures())
          .thenAnswer((_) async => []);

      final result = await useCase.call();

      expect(result, []);
      verify(mockAPODRepository.getAstronomyPictures());
      verifyNoMoreInteractions(mockAPODRepository);
    });
  });
}

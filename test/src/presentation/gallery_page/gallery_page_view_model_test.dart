import 'package:astro_snap/src/data/models/models.dart';
import 'package:astro_snap/src/domain/domain.dart';
import 'package:astro_snap/src/domain/entities/apod_entry.dart';
import 'package:astro_snap/src/presentation/presentation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'gallery_page_view_model_test.mocks.dart';

@GenerateMocks([GetImageGalleryUseCase])
void main() {
  group('GalleryPageViewModel', () {
    late MockGetImageGalleryUseCase mockGetImageGalleryUseCase;
    late GalleryPageViewModel viewModel;

    setUp(() {
      mockGetImageGalleryUseCase = MockGetImageGalleryUseCase();
      viewModel = GalleryPageViewModel(mockGetImageGalleryUseCase);
    });

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

    test('should set state to loading when loadGallery is called', () async {
      when(mockGetImageGalleryUseCase.call()).thenAnswer((_) async => []);

      viewModel.loadData();

      verify(mockGetImageGalleryUseCase.call());
      expect(viewModel.state, equals(const GalleryPageState.loading()));
    });

    test(
        'should set state to content when loadGallery is called and data is returned',
        () async {
      when(mockGetImageGalleryUseCase.call())
          .thenAnswer((_) async => tAPODEntryList);

      await viewModel.loadData();

      verify(mockGetImageGalleryUseCase.call());
      expect(
        viewModel.state,
        equals(
          GalleryPageState.data(entries: tAPODEntryList),
        ),
      );
    });

    test(
        'should set state to error when loadGallery is called and an error occurs',
        () async {
      when(mockGetImageGalleryUseCase.call())
          .thenThrow(Exception('Failed to load data'));

      await viewModel.loadData();

      verify(mockGetImageGalleryUseCase.call());
      expect(
        viewModel.state,
        equals(
          const GalleryPageState.error(),
        ),
      );
    });
  });
}

import 'package:astro_snap/src/data/models/models.dart';
import 'package:astro_snap/src/domain/domain.dart';
import 'package:astro_snap/src/infrastructure/utils/utils.dart';
import 'package:astro_snap/src/presentation/presentation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'gallery_page_view_model_test.mocks.dart';

@GenerateMocks([
  GetImageGalleryUseCase,
  ConnectivityUtils,
])
void main() {
  late MockGetImageGalleryUseCase mockGetImageGalleryUseCase;
  late MockConnectivityUtils connectivityUtils;
  late GalleryPageViewModel viewModel;

  setUp(() {
    mockGetImageGalleryUseCase = MockGetImageGalleryUseCase();
    connectivityUtils = MockConnectivityUtils();
    viewModel = GalleryPageViewModel(
      mockGetImageGalleryUseCase,
      connectivityUtils,
    );
  });
  group('GalleryPageViewModel Tests', () {
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

    test('should set state to loading when loadData is called', () async {
      when(mockGetImageGalleryUseCase.call()).thenAnswer((_) async => []);

      viewModel.loadData();

      expect(viewModel.state, equals(const GalleryPageState.loading()));
      verify(mockGetImageGalleryUseCase.call()).called(1);
    });

    test(
        'should set state to content and update allImages when loadData is called and data is returned',
        () async {
      when(mockGetImageGalleryUseCase.call())
          .thenAnswer((_) async => tAPODEntryList);

      await viewModel.loadData();

      expect(viewModel.state,
          equals(GalleryPageState.data(entries: tAPODEntryList)));
      expect(viewModel.allImages, equals(tAPODEntryList));
      verify(mockGetImageGalleryUseCase.call()).called(1);
    });

    test(
        'should set state to error when loadData is called and an error occurs',
        () async {
      when(mockGetImageGalleryUseCase.call())
          .thenThrow(Exception('Failed to load data'));

      await viewModel.loadData();

      expect(viewModel.state, equals(const GalleryPageState.error()));
      verify(mockGetImageGalleryUseCase.call()).called(1);
    });

    test('should filter images correctly when search is called', () async {
      viewModel.allImages = tAPODEntryList;

      viewModel.search('Test title');

      expect(viewModel.state,
          equals(GalleryPageState.data(entries: tAPODEntryList)));
    });

    test('should return empty list when search query does not match', () async {
      viewModel.allImages = tAPODEntryList;

      viewModel.search('Non-existent title');

      expect(viewModel.state, equals(const GalleryPageState.data(entries: [])));
    });

    test('should filter images by date correctly when search is called',
        () async {
      viewModel.allImages = tAPODEntryList;

      viewModel.search('2024-06-06');

      expect(viewModel.state,
          equals(GalleryPageState.data(entries: tAPODEntryList)));
    });

    test('should return empty list when search query date does not match',
        () async {
      viewModel.allImages = tAPODEntryList;

      viewModel.search('2023-01-01');

      expect(viewModel.state, equals(const GalleryPageState.data(entries: [])));
    });
  });
}

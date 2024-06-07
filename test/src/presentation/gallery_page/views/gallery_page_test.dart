import 'package:astro_snap/src/data/models/apod_entry_model.dart';
import 'package:astro_snap/src/domain/domain.dart';
import 'package:astro_snap/src/infrastructure/utils/connectivity_utils.dart';
import 'package:astro_snap/src/presentation/gallery_page/gallery_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'gallery_page_test.mocks.dart';

@GenerateMocks([
  GetImageGalleryUseCase,
  ConnectivityUtils,
])
void main() {
  late MockGetImageGalleryUseCase getImageGalleryUseCase;
  late MockConnectivityUtils connectivityUtils;

  setUp(() {
    getImageGalleryUseCase = MockGetImageGalleryUseCase();
    connectivityUtils = MockConnectivityUtils();

    when(connectivityUtils.hasConnectivity()).thenAnswer((_) async => true);

    GetIt.instance.registerSingleton<GalleryPageViewModel>(
      GalleryPageViewModel(
        getImageGalleryUseCase,
        connectivityUtils,
      ),
    );
  });

  tearDown(() {
    GetIt.instance.reset();
  });

  group('GalleryPage Tests', () {
    testWidgets('should show loading indicator when in loading state',
        (WidgetTester tester) async {
      when(getImageGalleryUseCase.call()).thenAnswer((_) async => []);

      await tester.pumpWidget(
        const MaterialApp(
          home: GalleryPage(),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should show list of images when in data state',
        (WidgetTester tester) async {
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

      when(getImageGalleryUseCase.call())
          .thenAnswer((_) async => tAPODEntryList);

      await tester.pumpWidget(
        const MaterialApp(
          home: GalleryPage(),
        ),
      );

      await tester.pump();

      expect(find.byType(ListTile), findsOneWidget);
      expect(find.text('Test title'), findsOneWidget);
    });

    testWidgets('should show error message when in error state',
        (WidgetTester tester) async {
      when(getImageGalleryUseCase.call())
          .thenThrow(Exception('Failed to load data'));

      await tester.pumpWidget(
        const MaterialApp(
          home: GalleryPage(),
        ),
      );

      await tester.pump();

      expect(find.text('ERROR'), findsOneWidget);
    });
  });
}

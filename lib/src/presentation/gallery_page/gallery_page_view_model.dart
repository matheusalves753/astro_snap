import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain.dart';
import 'gallery_page_state.dart';

class GalleryPageViewModel extends Cubit<GalleryPageState> {
  final GetImageGalleryUseCase _getImageGalleryUseCase;
  List<APODEntry> _allImages = [];

  GalleryPageViewModel(this._getImageGalleryUseCase)
      : super(const GalleryPageState.loading());

  Future<void> loadData() async {
    try {
      emit(const GalleryPageState.loading());
      final data = await _getImageGalleryUseCase();
      _allImages = data;
      emit(GalleryPageState.data(entries: data));
    } catch (e) {
      emit(const GalleryPageState.error());
    }
  }

  void search(String query) {
    final filteredImages = _allImages.where((image) {
      final titleLower = image.title.toLowerCase();
      final dateStr = image.date.toIso8601String().toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) || dateStr.contains(searchLower);
    }).toList();

    emit(GalleryPageState.data(entries: filteredImages));
  }
}

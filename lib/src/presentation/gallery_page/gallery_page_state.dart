import 'package:astro_snap/src/domain/entities/apod_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_page_state.freezed.dart';

@freezed
class GalleryPageState with _$GalleryPageState {
  const factory GalleryPageState.data({
    required List<APODEntry> entries,
  }) = GalleryPageDataState;

  const factory GalleryPageState.loading() = GalleryPageLoadingState;

  const factory GalleryPageState.error() = GalleryPageErrorState;
}

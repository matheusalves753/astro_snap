import 'package:astro_snap/src/domain/entities/apod_entry.dart';
import 'package:astro_snap/src/domain/repositories/apod_repository.dart';

abstract interface class GetImageGalleryUseCase {
  Future<List<APODEntry>> call();
}

class GetImageGalleryUseCaseImpl implements GetImageGalleryUseCase {
  final APODRepository _repository;

  GetImageGalleryUseCaseImpl(this._repository);

  @override
  Future<List<APODEntry>> call() async {
    return _repository.getAstronomyPictures();
  }
}

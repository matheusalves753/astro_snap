import '../entities/entities.dart';

abstract interface class APODRepository {
  Future<List<APODEntry>> getAstronomyPictures();
}

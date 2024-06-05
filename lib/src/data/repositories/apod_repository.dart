import '../../domain/domain.dart';
import '../../data/data.dart';

class APODRepositoryImpl implements APODRepository {
  final RemoteDataSource remoteDataSource;

  APODRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<APODEntry>> getAstronomyPictures() async {
    final models = await remoteDataSource.getAstronomyPictures();
    return models.map((model) => model.toEntity()).toList();
  }
}

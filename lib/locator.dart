import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'src/data/data.dart';
import 'src/domain/domain.dart';
import 'src/infrastructure/utils/utils.dart';
import 'src/presentation/presentation.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  _setupInsfrastructure();
  _setupDataSources();
  _setupRepositories();
  _setupUseCases();
  _setupViewModels();
}

void _setupInsfrastructure() {
  locator.registerLazySingleton<ConnectivityUtils>(
    () => ConnectivityUtils(),
  );
  locator.registerLazySingleton<FileUtils>(
    () => FileUtils(),
  );
}

void _setupDataSources() {
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      http.Client(),
      locator<ConnectivityUtils>(),
      locator<FileUtils>(),
    ),
  );
}

void _setupRepositories() {
  locator.registerLazySingleton<APODRepository>(
    () => APODRepositoryImpl(locator<RemoteDataSource>()),
  );
}

void _setupUseCases() {
  locator.registerFactory<GetImageGalleryUseCase>(
    () => GetImageGalleryUseCaseImpl(
      locator<APODRepository>(),
    ),
  );
}

void _setupViewModels() {
  locator.registerFactory<GalleryPageViewModel>(
    () => GalleryPageViewModel(
      locator<GetImageGalleryUseCase>(),
      locator<ConnectivityUtils>(),
    ),
  );
}

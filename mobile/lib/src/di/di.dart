import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile/src/api/apiService.dart';
import 'package:mobile/src/api/github/githubApiService.dart';
import 'package:mobile/src/api/github/githubApiServiceFactory.dart';
import 'package:mobile/src/api/twitter/twitterApiService.dart';
import 'package:mobile/src/api/twitter/twitterApiServiceFactory.dart';
import 'package:mobile/src/blocs/spash/splash_bloc.dart';
import 'package:mobile/src/repositories/github/githubRepository.dart';
import 'package:mobile/src/repositories/github/githubRepositoryImpl.dart';
import 'package:mobile/src/repositories/twitter/twitterRepository.dart';
import 'package:mobile/src/repositories/twitter/twitterRepositoryImpl.dart';
import 'package:mobile/src/utils/config.dart';

final GetIt getIt = GetIt.instance;

/// Initialization of the dependency injection in the application
Future<void> init() async {
  final chopper = ChopperClient(
    baseUrl: baseUrl,
    services: [
      // the generated service
      ApiService.create()
    ],
    converter: const JsonConverter(),
  );

  final apiService = ApiService.create(chopper);

  //ApiService
  getIt.registerLazySingleton<TwitterApiService>(
      () => TwitterApiServiceFactory(apiService: apiService));

  getIt.registerLazySingleton<GithubApiService>(
      () => GithubApiServiceFactory(apiService: apiService));

  //Repository injection
  getIt.registerFactory<TwitterRepository>(
    () =>
        TwitterRepositoryImpl(networkInfo: getIt(), twitterApiService: getIt()),
  );

  getIt.registerFactory<GithubRepository>(
    () => GithubRepositoryImpl(networkInfo: getIt(), githubApiService: getIt()),
  );

  //Blocks injection
  getIt.registerFactory<SplashBloc>(() => SplashBloc());
}

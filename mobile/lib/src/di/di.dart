import 'package:get_it/get_it.dart';
import 'package:mobile/src/blocs/spash/splash_bloc.dart';

final GetIt getIt = GetIt.instance;

/// Initialization of the dependency injection in the application
Future<void> init() async {
  //Blocks injection
  getIt.registerFactory<SplashBloc>(() => SplashBloc());
}

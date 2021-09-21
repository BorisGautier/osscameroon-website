import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is NavigateToHomeScreenEvent) {
      yield* _mapSplashNavigateToState();
    }
  }

  Stream<SplashState> _mapSplashNavigateToState() async* {
    yield SplashLoading();

    // During the Loading state we can do additional checks like,
    // if the internet connection is available or not etc..

    await Future.delayed(const Duration(
        seconds: 4)); // This is to simulate that above checking process
    yield SplashLoaded(); // In this state we can load the HOME PAGE
  }
}

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

part 'splash_state.dart';
part 'splash_event.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {

  SplashBloc() : super( SplashInitialState()) {
    on<SplashInitialEvent>(
      (event, emit) => {

      }
    );
  }

}
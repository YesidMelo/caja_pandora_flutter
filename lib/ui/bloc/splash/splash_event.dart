part of 'splash_bloc.dart';

@immutable
abstract class SplashEvent {

}

class SplashInitialEvent extends SplashEvent {}

class SplashLoadingEvent extends SplashEvent {}

class SplashLoadedEvent extends SplashEvent {}
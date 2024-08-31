part of 'startup_bloc.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState.initial({
    User? user,
    @Default(StartupStatus.guest()) StartupStatus status,
  }) = _Initial;
}

@freezed
class StartupStatus with _$StartupStatus {
  const factory StartupStatus.logged({User? user}) = StatusLogged;
  const factory StartupStatus.guest() = StatusGuest;
  const factory StartupStatus.failure({required String error}) = StatusFailure;
}

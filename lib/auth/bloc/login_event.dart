part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = Started;
  const factory LoginEvent.submitted({
    required String email,
    required String password,
  }) = Submitted;
  const factory LoginEvent.registered({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) = Registered;
  const factory LoginEvent.logout() = LoggedOut;
}

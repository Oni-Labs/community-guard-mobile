part of 'auth_bloc.dart';

sealed class AuthEvent {
  const AuthEvent();
}

class Started extends AuthEvent {
  const Started();
}

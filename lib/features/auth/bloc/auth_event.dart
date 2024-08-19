part of 'auth_bloc.dart';

sealed class AuthEvent {
  const AuthEvent();
}

class Started extends AuthEvent {
  const Started();
}

class Submitted extends AuthEvent {
  const Submitted(this.email, this.password);

  final String email;
  final String password;
}

class Registered extends AuthEvent {
  const Registered(this.name, this.email, this.password, this.confirmPassword);

  final String name;
  final String email;
  final String password;
  final String confirmPassword;
}

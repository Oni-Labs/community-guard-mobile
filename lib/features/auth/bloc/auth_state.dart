part of 'auth_bloc.dart';

class AuthState {
  final AuthStatus? status;

  const AuthState({
   this.status = AuthStatus.initial,
  });

  AuthState copyWith({
    AuthStatus? status,
  }) {
    return AuthState(
      status: status ?? this.status,
    );
  }

  @override
  String toString() => 'AuthState(status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthState && other.status == status;
  }

  @override
  int get hashCode => status.hashCode;
}

class AuthStatus {
  const AuthStatus._();

  static const initial = AuthStatus._();
  static const loading = AuthStatus._();
  static const success = AuthStatus._();
  static const failure = AuthStatus._();
}
part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(LoginStatus.initial()) LoginStatus status,
    @Default(TokenStatus.initialToken()) TokenStatus tokenStatus,
    @Default(false) bool isLogged,
    User? user,
  }) = Initial;
}

@freezed
class LoginStatus with _$LoginStatus {
  const factory LoginStatus.initial() = StatusInitial;
  const factory LoginStatus.loading() = StatusLoading;
  const factory LoginStatus.logged({User? user}) = StatusLogged;
  const factory LoginStatus.failure({required String error}) = StatusFailure;
}

@freezed
class TokenStatus with _$TokenStatus {
  const factory TokenStatus.initialToken() = InitialToken;
  const factory TokenStatus.sendingToken() = SendingToken;
  const factory TokenStatus.sentToken() = SentToken;
  const factory TokenStatus.confirmingToken() = ConfirmingToken;
  const factory TokenStatus.confirmedToken() = ConfirmedToken;
  const factory TokenStatus.failure({required String error}) = Failure;
}

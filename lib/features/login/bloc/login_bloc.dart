import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:community_guard_mobile/core/api/api_util.dart';
import 'package:community_guard_mobile/core/entity/user.dart';
import 'package:community_guard_mobile/core/repository/user_repository.dart';
import 'package:community_guard_mobile/main.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api/request/generic_response.dart';
import '../../../helpers.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<Started>(onStarted, transformer: droppable());
    on<Submitted>(onSubmitted, transformer: droppable());
    on<Registered>(onRegistered, transformer: droppable());
  }

  final _repository = UserRepository();

  Future<void> onStarted(
    Started event,
    Emitter<LoginState> emit,
  ) async {}

  Future<void> onSubmitted(
    Submitted event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const LoginStatus.loading()));
      final client = ApiUtil.getRestClient();
      final request = await client.login(
        email: event.email,
        password: event.password,
      );
      if (request.response.statusCode == HttpStatus.ok) {
        final user = request.data;
        await secureStorage.write(
          key: 'user_token',
          value: request.data.token,
        );

        await _repository.setUser(request.data);
        emit(state.copyWith(status: LoginStatus.logged(user: user), isLogged: true));
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        final data = e.response?.data != null
            ? GenericResponse.fromJson(e.response!.data, (json) => null)
            : null;
        emit(state.copyWith(status: const LoginStatus.failure(error: 'O servidor envou uma resposta inválida')));
      } else {
        emit(state.copyWith(status: const LoginStatus.failure(error: 'Occorreu um erro inesperado')));
      }
    }
  }

  Future<void> onRegistered(
    Registered event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: const LoginStatus.loading()));
    try {
      final client = ApiUtil.getRestClient();
      final request = await client.register(
        name: event.name,
        email: event.email,
        password: event.password,
        passwordConfirmation: event.confirmPassword,
      );
      if (request.response.statusCode == HttpStatus.created) {
        final user = request.data;
        await secureStorage.write(
          key: 'user_token',
          value: user.data?.token,
        );
        await _repository.setUser(user.data!);
        emit(state.copyWith(status: LoginStatus.logged(user: user.data!), isLogged: true));
      }
    } on DioException catch (e, stack) {
      talker.handle(e, stack);
      emit(state.copyWith(status: const LoginStatus.failure(error: 'Erro ao tentar criar o usuário')));
    }
  }
}

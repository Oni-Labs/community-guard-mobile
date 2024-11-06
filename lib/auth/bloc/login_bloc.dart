import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:community_guard_mobile/core/api/api_util.dart';
import 'package:community_guard_mobile/core/entity/user.dart';
import 'package:community_guard_mobile/main.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../helpers.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<Started>(onStarted, transformer: droppable());
    on<Submitted>(onSubmitted, transformer: droppable());
    on<Registered>(onRegistered, transformer: droppable());
    on<EventSentToken>(onEventSentToken, transformer: droppable());
    on<ResetedPassword>(onResetedPassword, transformer: droppable());
    on<LoggedOut>(onLoggedOut, transformer: droppable());
  }

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
        final user = request.response.data;
        await secureStorage.write(
          key: 'user_token',
          value: user!.token,
        );
        emit(
          state.copyWith(
            status: LoginStatus.logged(user: user),
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: const LoginStatus.failure(
                error: 'O servidor enviou um response inválido'),
          ),
        );
      }
    } on DioException catch (e, stack) {
      talker.handle(e, stack);
      emit(state.copyWith(
          status: const LoginStatus.failure(error: 'Erro ao logar')));
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
        // await _repository.setUser(user.data!);
        emit(
          state.copyWith(
            status: LoginStatus.logged(user: user.data!),
          ),
        );
      }
    } on DioException catch (e, stack) {
      talker.handle(e, stack);
      emit(
        state.copyWith(
          status: const LoginStatus.failure(
              error: 'Erro ao tentar criar o usuário'),
        ),
      );
    }
  }

  Future<void> onEventSentToken(
    EventSentToken event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(tokenStatus: const TokenStatus.sendingToken()));
    try {
      final client = ApiUtil.getRestClient();
      final request = await client.resetPassword(email: event.email);
      if (request.response.statusCode == HttpStatus.ok) {
        emit(
          state.copyWith(
            tokenStatus: const TokenStatus.sentToken(),
          ),
        );
      } else {
        emit(
          state.copyWith(
            tokenStatus: const TokenStatus.failure(
                error: 'O servidor enviou um response inválido'),
          ),
        );
      }
    } on DioException catch (e, stack) {
      talker.handle(e, stack);
      emit(
        state.copyWith(
          tokenStatus:
              const TokenStatus.failure(error: 'Erro ao tentar enviar o token'),
        ),
      );
    }
  }

  Future<void> onResetedPassword(
    ResetedPassword event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(tokenStatus: const TokenStatus.confirmingToken()));
      final client = ApiUtil.getRestClient();
      final request = await client.resetPasswordConfirm(
        token: event.token,
        password: event.password,
        passwordConfirmation: event.confirmPassword,
      );
      if (request.response.statusCode == HttpStatus.ok) {
        emit(
          state.copyWith(
            tokenStatus: const TokenStatus.confirmedToken(),
          ),
        );
      } else {
        emit(
          state.copyWith(
            tokenStatus: const TokenStatus.failure(
                error: 'O servidor enviou um response inválido'),
          ),
        );
      }
    } on DioException catch (e, stack) {
      talker.handle(e, stack);
      emit(
        state.copyWith(
          tokenStatus: const TokenStatus.failure(
              error: 'Erro ao tentar confirmar o token'),
        ),
      );
    }
  }

  Future<void> onLoggedOut(
    LoggedOut event,
    Emitter<LoginState> emit,
  ) async {}
}

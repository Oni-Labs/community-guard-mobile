import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:community_surveillance/core/api/api_util.dart';

import '../../../helpers.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<Started>(onStarted, transformer: droppable());
    on<Submitted>(onSubmitted, transformer: droppable());
    on<Registered>(onRegistered, transformer: droppable());
  }

  Future<void> onStarted(Started event,
      Emitter<AuthState> emit,) async {}

  Future<void> onSubmitted(Submitted event,
      Emitter<AuthState> emit,) async {
    // emit(state.copyWith(status: AuthStatus.loading));
    talker.info('Login request');
    try {
      await Future.delayed(const Duration(seconds: 1));
      final client = ApiUtil.getRestClient();
      final request = await client.login(
          email: 'gustavo@teste.com', password: 'Gavf#778830');
      talker.info('Login request status: ${request.response.statusCode}');

      if (request.response.statusCode == HttpStatus.ok) {
        talker.info('Login success');
        emit(state.copyWith(status: AuthStatus.success));
      } else {
        talker.info('Login failed');
        emit(state.copyWith(status: AuthStatus.failure));
      }
      emit(state.copyWith(status: AuthStatus.success));
    } catch (e, stackTrace) {
      talker.handle(e, stackTrace);
      talker.info('Login failed');
      emit(state.copyWith(status: AuthStatus.failure));
    }
  }

  Future<void> onRegistered(Registered event,
      Emitter<AuthState> emit,) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));
      final client = ApiUtil.getRestClient();
      final request = await client.register(
        name: event.name,
        email: event.email,
        password: event.password,
        confirmPassword: event.confirmPassword,
      );
      if (request.response.statusCode == HttpStatus.ok) {
        talker.info('Register success');
        emit(state.copyWith(status: AuthStatus.success));
      }
      talker.info('Register request status: ${request.response.statusCode}');

      if (request.response.statusCode == HttpStatus.ok) {
        talker.info('Register success');
        emit(state.copyWith(status: AuthStatus.success));
      }
    } catch (e, stackTrace) {
      talker.handle(e, stackTrace);
      talker.info('Register failed');
      emit(state.copyWith(status: AuthStatus.failure));
    }
  }
}
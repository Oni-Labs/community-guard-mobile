import 'package:bloc/bloc.dart';
import 'package:community_guard_mobile/core/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/entity/user.dart';

part 'startup_event.dart';

part 'startup_state.dart';

part 'startup_bloc.freezed.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc() : super(const StartupState.initial()) {
    on<Started>(onStarted);
  }

  final _repository = UserRepository();

  Future<void> onStarted(
    Started event,
    Emitter<StartupState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    final user = await _repository.getLoggedUser();
    if (user != null) {
      emit(state.copyWith(user: user));
    } else {
      emit(state.copyWith(user: null));
    }
  }

  Future<void> onRead(
    Read event,
    Emitter<StartupState> emit,
  ) async {}
}

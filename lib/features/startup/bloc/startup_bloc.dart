import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/entity/user.dart';

part 'startup_event.dart';

part 'startup_state.dart';

part 'startup_bloc.freezed.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc() : super(const StartupState.initial()) {
    on<Started>(onStarted);
  }

  // final _repository = UserRepository();

  Future<void> onStarted(
    Started event,
    Emitter<StartupState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(status: const StartupStatus.guest()));
  }

  Future<void> onRead(
    Read event,
    Emitter<StartupState> emit,
  ) async {}
}

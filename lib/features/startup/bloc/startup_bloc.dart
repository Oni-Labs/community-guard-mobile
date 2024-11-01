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
    emit(
      state.copyWith(
        status: const StartupStatus.guest(),
        user: User(
          id: 1,
          name: 'Gustavo',
          email: 'gustavo@gustavo.com',
          token: '123456789',
          isFirstAccess: true,
        ),
      ),
    );
  }

  Future<void> onRead(
    Read event,
    Emitter<StartupState> emit,
  ) async {}
}

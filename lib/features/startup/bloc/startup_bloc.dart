import 'package:bloc/bloc.dart';

part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc() : super(const StartupState()) {
    on<StartupEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

import 'package:bloc/bloc.dart';

part 'import_post_event.dart';
part 'import_post_state.dart';

class ImportPostBloc extends Bloc<ImportPostEvent, ImportPostState> {
  ImportPostBloc() : super(const ImportPostState()) {
    on<ImportPostEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

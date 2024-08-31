import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(const HomeState(
            isFavorite: false, isSaved: false, isCompleted: false)) {
    on<FavoritePost>(onFavoritePost);
    on<SavePost>(onSavePost);
    on<CompletePost>(onCompletePost);
    on<SharePost>(onSharePost);
  }

  Future<void> onFavoritePost(HomeEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isFavorite: state.isFavorite ? false : true));
  }

  Future<void> onSavePost(HomeEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isSaved: state.isSaved ? false : true));
  }

  Future<void> onCompletePost(HomeEvent event, Emitter<HomeState> emit) async {}

  Future<void> onSharePost(HomeEvent event, Emitter<HomeState> emit) async {}
}

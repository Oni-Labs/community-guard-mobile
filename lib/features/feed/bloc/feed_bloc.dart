import 'package:bloc/bloc.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc()
      : super(const FeedState(
            isFavorite: false, isSaved: false, isCompleted: false)) {
    on<FavoritePost>(onFavoritePost);
    on<SavePost>(onSavePost);
    on<CompletePost>(onCompletePost);
    on<SharePost>(onSharePost);
  }

  Future<void> onFavoritePost(FeedEvent event, Emitter<FeedState> emit) async {
    emit(state.copyWith(isFavorite: state.isFavorite ? false : true));
  }

  Future<void> onSavePost(FeedEvent event, Emitter<FeedState> emit) async {
    emit(state.copyWith(isSaved: state.isSaved ? false : true));
  }

  Future<void> onCompletePost(FeedEvent event, Emitter<FeedState> emit) async {
    // TODO: implement completePost
  }

  Future<void> onSharePost(FeedEvent event, Emitter<FeedState> emit) async {
    // TODO: implement sharePost
  }
}

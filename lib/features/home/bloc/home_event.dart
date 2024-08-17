part of 'home_bloc.dart';

sealed class HomeEvent {
  const HomeEvent();
}

class LoadPosts extends HomeEvent {
  const LoadPosts();
}

class FavoritePost extends HomeEvent {
  const FavoritePost();
}

class SavePost extends HomeEvent {
  const SavePost();
}

class CompletePost extends HomeEvent {
  const CompletePost();
}

class SharePost extends HomeEvent {
  const SharePost();
}

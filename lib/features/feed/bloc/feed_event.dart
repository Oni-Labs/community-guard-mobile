part of 'feed_bloc.dart';

sealed class FeedEvent {
  const FeedEvent();
}

class LoadPosts extends FeedEvent {
  const LoadPosts();
}

class FavoritePost extends FeedEvent {
  const FavoritePost();
}

class SavePost extends FeedEvent {
  const SavePost();
}

class CompletePost extends FeedEvent {
  const CompletePost();
}

class SharePost extends FeedEvent {
  const SharePost();
}

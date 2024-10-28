part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial({
    @Default(false) bool isFavorite,
    @Default(false) bool isSaved,
    @Default(false) bool isCompleted,
    @Default(0) int page,
    @Default([]) List<Post> posts,
    @Default(FeedStatus.initial()) FeedStatus status,
  }) = _Initial;
}

@freezed
class FeedStatus with _$FeedStatus {
  const factory FeedStatus.initial() = FeedInitial;
  const factory FeedStatus.loading() = FeedLoading;
  const factory FeedStatus.success(List<Post> posts) = FeedSuccess;
  const factory FeedStatus.failure(String message) = FeedFailure;
}

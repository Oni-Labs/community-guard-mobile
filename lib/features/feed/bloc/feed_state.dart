part of 'feed_bloc.dart';

class FeedState {
  final bool isFavorite;
  final bool isSaved;
  final bool isCompleted;

  const FeedState({
    required this.isFavorite,
    required this.isSaved,
    required this.isCompleted,
  });

  FeedState copyWith({
    bool? isFavorite,
    bool? isSaved,
    bool? isCompleted,
  }) {
    return FeedState(
      isFavorite: isFavorite ?? this.isFavorite,
      isSaved: isSaved ?? this.isSaved,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

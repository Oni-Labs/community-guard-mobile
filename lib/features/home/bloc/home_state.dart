part of 'home_bloc.dart';

class HomeState {
  final bool isFavorite;
  final bool isSaved;
  final bool isCompleted;

  const HomeState({
    required this.isFavorite,
    required this.isSaved,
    required this.isCompleted,
  });

  HomeState copyWith({
    bool? isFavorite,
    bool? isSaved,
    bool? isCompleted,
  }) {
    return HomeState(
      isFavorite: isFavorite ?? this.isFavorite,
      isSaved: isSaved ?? this.isSaved,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

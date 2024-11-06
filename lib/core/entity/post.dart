// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required String username,
    required String urlPhotoUser,
    required String title,
    required String description,
    required List<String> urlPhotosPost,
    @Default(false) bool isCompleted,
    required String address,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

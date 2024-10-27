// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required String nameUser,
    required String urlPhotoUser,
    required String title,
    required String description,
    required String urlPhotoPost,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json);
}

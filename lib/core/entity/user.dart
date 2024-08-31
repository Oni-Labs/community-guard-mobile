// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @Entity(realClass: User)
  factory User({
    @Id(assignable: true) required int id,
    required String name,
    required String email,
    @JsonKey(name: 'profile_photo') final String? profilePhoto,
    required String token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

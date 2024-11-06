// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_token.freezed.dart';
part 'reset_token.g.dart';

@freezed
class ResetToken with _$ResetToken {
  factory ResetToken({
    required int id,
    required String name,
    required String email,
    @JsonKey(name: 'profile_photo') final String? profilePhoto,
    required String token,
    @Default(false) final bool isFirstAccess,
  }) = _ResetToken;

  factory ResetToken.fromJson(Map<String, dynamic> json) =>
      _$ResetTokenFromJson(json);
}

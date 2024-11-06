// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetToken _$ResetTokenFromJson(Map<String, dynamic> json) {
  return _ResetToken.fromJson(json);
}

/// @nodoc
mixin _$ResetToken {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_photo')
  String? get profilePhoto => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isFirstAccess => throw _privateConstructorUsedError;

  /// Serializes this ResetToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetTokenCopyWith<ResetToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetTokenCopyWith<$Res> {
  factory $ResetTokenCopyWith(
          ResetToken value, $Res Function(ResetToken) then) =
      _$ResetTokenCopyWithImpl<$Res, ResetToken>;
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'profile_photo') String? profilePhoto,
      String token,
      bool isFirstAccess});
}

/// @nodoc
class _$ResetTokenCopyWithImpl<$Res, $Val extends ResetToken>
    implements $ResetTokenCopyWith<$Res> {
  _$ResetTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? profilePhoto = freezed,
    Object? token = null,
    Object? isFirstAccess = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstAccess: null == isFirstAccess
          ? _value.isFirstAccess
          : isFirstAccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetTokenImplCopyWith<$Res>
    implements $ResetTokenCopyWith<$Res> {
  factory _$$ResetTokenImplCopyWith(
          _$ResetTokenImpl value, $Res Function(_$ResetTokenImpl) then) =
      __$$ResetTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String email,
      @JsonKey(name: 'profile_photo') String? profilePhoto,
      String token,
      bool isFirstAccess});
}

/// @nodoc
class __$$ResetTokenImplCopyWithImpl<$Res>
    extends _$ResetTokenCopyWithImpl<$Res, _$ResetTokenImpl>
    implements _$$ResetTokenImplCopyWith<$Res> {
  __$$ResetTokenImplCopyWithImpl(
      _$ResetTokenImpl _value, $Res Function(_$ResetTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? profilePhoto = freezed,
    Object? token = null,
    Object? isFirstAccess = null,
  }) {
    return _then(_$ResetTokenImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstAccess: null == isFirstAccess
          ? _value.isFirstAccess
          : isFirstAccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetTokenImpl implements _ResetToken {
  _$ResetTokenImpl(
      {required this.id,
      required this.name,
      required this.email,
      @JsonKey(name: 'profile_photo') this.profilePhoto,
      required this.token,
      this.isFirstAccess = false});

  factory _$ResetTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetTokenImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'profile_photo')
  final String? profilePhoto;
  @override
  final String token;
  @override
  @JsonKey()
  final bool isFirstAccess;

  @override
  String toString() {
    return 'ResetToken(id: $id, name: $name, email: $email, profilePhoto: $profilePhoto, token: $token, isFirstAccess: $isFirstAccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetTokenImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isFirstAccess, isFirstAccess) ||
                other.isFirstAccess == isFirstAccess));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, profilePhoto, token, isFirstAccess);

  /// Create a copy of ResetToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetTokenImplCopyWith<_$ResetTokenImpl> get copyWith =>
      __$$ResetTokenImplCopyWithImpl<_$ResetTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetTokenImplToJson(
      this,
    );
  }
}

abstract class _ResetToken implements ResetToken {
  factory _ResetToken(
      {required final int id,
      required final String name,
      required final String email,
      @JsonKey(name: 'profile_photo') final String? profilePhoto,
      required final String token,
      final bool isFirstAccess}) = _$ResetTokenImpl;

  factory _ResetToken.fromJson(Map<String, dynamic> json) =
      _$ResetTokenImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'profile_photo')
  String? get profilePhoto;
  @override
  String get token;
  @override
  bool get isFirstAccess;

  /// Create a copy of ResetToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetTokenImplCopyWith<_$ResetTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

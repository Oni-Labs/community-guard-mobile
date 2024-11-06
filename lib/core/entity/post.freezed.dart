// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get username => throw _privateConstructorUsedError;
  String get urlPhotoUser => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get urlPhotosPost => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String username,
      String urlPhotoUser,
      String title,
      String description,
      List<String> urlPhotosPost,
      bool isCompleted,
      String address});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? urlPhotoUser = null,
    Object? title = null,
    Object? description = null,
    Object? urlPhotosPost = null,
    Object? isCompleted = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhotoUser: null == urlPhotoUser
          ? _value.urlPhotoUser
          : urlPhotoUser // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhotosPost: null == urlPhotosPost
          ? _value.urlPhotosPost
          : urlPhotosPost // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String urlPhotoUser,
      String title,
      String description,
      List<String> urlPhotosPost,
      bool isCompleted,
      String address});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? urlPhotoUser = null,
    Object? title = null,
    Object? description = null,
    Object? urlPhotosPost = null,
    Object? isCompleted = null,
    Object? address = null,
  }) {
    return _then(_$PostImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhotoUser: null == urlPhotoUser
          ? _value.urlPhotoUser
          : urlPhotoUser // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlPhotosPost: null == urlPhotosPost
          ? _value._urlPhotosPost
          : urlPhotosPost // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  _$PostImpl(
      {required this.username,
      required this.urlPhotoUser,
      required this.title,
      required this.description,
      required final List<String> urlPhotosPost,
      this.isCompleted = false,
      required this.address})
      : _urlPhotosPost = urlPhotosPost;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String username;
  @override
  final String urlPhotoUser;
  @override
  final String title;
  @override
  final String description;
  final List<String> _urlPhotosPost;
  @override
  List<String> get urlPhotosPost {
    if (_urlPhotosPost is EqualUnmodifiableListView) return _urlPhotosPost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urlPhotosPost);
  }

  @override
  @JsonKey()
  final bool isCompleted;
  @override
  final String address;

  @override
  String toString() {
    return 'Post(username: $username, urlPhotoUser: $urlPhotoUser, title: $title, description: $description, urlPhotosPost: $urlPhotosPost, isCompleted: $isCompleted, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.urlPhotoUser, urlPhotoUser) ||
                other.urlPhotoUser == urlPhotoUser) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._urlPhotosPost, _urlPhotosPost) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      urlPhotoUser,
      title,
      description,
      const DeepCollectionEquality().hash(_urlPhotosPost),
      isCompleted,
      address);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  factory _Post(
      {required final String username,
      required final String urlPhotoUser,
      required final String title,
      required final String description,
      required final List<String> urlPhotosPost,
      final bool isCompleted,
      required final String address}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String get username;
  @override
  String get urlPhotoUser;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get urlPhotosPost;
  @override
  bool get isCompleted;
  @override
  String get address;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

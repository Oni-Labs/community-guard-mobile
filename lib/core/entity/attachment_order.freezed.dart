// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttachmentOrder _$AttachmentOrderFromJson(Map<String, dynamic> json) {
  return _AttachmentOrder.fromJson(json);
}

/// @nodoc
mixin _$AttachmentOrder {
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this AttachmentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttachmentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentOrderCopyWith<AttachmentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentOrderCopyWith<$Res> {
  factory $AttachmentOrderCopyWith(
          AttachmentOrder value, $Res Function(AttachmentOrder) then) =
      _$AttachmentOrderCopyWithImpl<$Res, AttachmentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file_name') String fileName,
      String path,
      String type,
      String url});
}

/// @nodoc
class _$AttachmentOrderCopyWithImpl<$Res, $Val extends AttachmentOrder>
    implements $AttachmentOrderCopyWith<$Res> {
  _$AttachmentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttachmentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? path = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentOrderImplCopyWith<$Res>
    implements $AttachmentOrderCopyWith<$Res> {
  factory _$$AttachmentOrderImplCopyWith(_$AttachmentOrderImpl value,
          $Res Function(_$AttachmentOrderImpl) then) =
      __$$AttachmentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file_name') String fileName,
      String path,
      String type,
      String url});
}

/// @nodoc
class __$$AttachmentOrderImplCopyWithImpl<$Res>
    extends _$AttachmentOrderCopyWithImpl<$Res, _$AttachmentOrderImpl>
    implements _$$AttachmentOrderImplCopyWith<$Res> {
  __$$AttachmentOrderImplCopyWithImpl(
      _$AttachmentOrderImpl _value, $Res Function(_$AttachmentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttachmentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? path = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$AttachmentOrderImpl(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentOrderImpl implements _AttachmentOrder {
  _$AttachmentOrderImpl(
      {@JsonKey(name: 'file_name') required this.fileName,
      required this.path,
      required this.type,
      required this.url});

  factory _$AttachmentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentOrderImplFromJson(json);

  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  final String path;
  @override
  final String type;
  @override
  final String url;

  @override
  String toString() {
    return 'AttachmentOrder(fileName: $fileName, path: $path, type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentOrderImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, path, type, url);

  /// Create a copy of AttachmentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentOrderImplCopyWith<_$AttachmentOrderImpl> get copyWith =>
      __$$AttachmentOrderImplCopyWithImpl<_$AttachmentOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentOrderImplToJson(
      this,
    );
  }
}

abstract class _AttachmentOrder implements AttachmentOrder {
  factory _AttachmentOrder(
      {@JsonKey(name: 'file_name') required final String fileName,
      required final String path,
      required final String type,
      required final String url}) = _$AttachmentOrderImpl;

  factory _AttachmentOrder.fromJson(Map<String, dynamic> json) =
      _$AttachmentOrderImpl.fromJson;

  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  String get path;
  @override
  String get type;
  @override
  String get url;

  /// Create a copy of AttachmentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentOrderImplCopyWith<_$AttachmentOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

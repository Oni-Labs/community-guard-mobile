// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationResponse<T> _$PaginationResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginationResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginationResponse<T> {
  @JsonKey(defaultValue: 0)
  int get to => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get from => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get total => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;

  /// Serializes this PaginationResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationResponseCopyWith<T, PaginationResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResponseCopyWith<T, $Res> {
  factory $PaginationResponseCopyWith(PaginationResponse<T> value,
          $Res Function(PaginationResponse<T>) then) =
      _$PaginationResponseCopyWithImpl<T, $Res, PaginationResponse<T>>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int to,
      @JsonKey(defaultValue: 0) int from,
      @JsonKey(defaultValue: 0) int total,
      List<T> data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'first_page_url') String firstPageUrl,
      @JsonKey(name: 'last_page_url') String lastPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl});
}

/// @nodoc
class _$PaginationResponseCopyWithImpl<T, $Res,
        $Val extends PaginationResponse<T>>
    implements $PaginationResponseCopyWith<T, $Res> {
  _$PaginationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? total = null,
    Object? data = null,
    Object? currentPage = freezed,
    Object? lastPage = null,
    Object? perPage = null,
    Object? firstPageUrl = null,
    Object? lastPageUrl = null,
    Object? nextPageUrl = freezed,
    Object? prevPageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationResponseImplCopyWith<T, $Res>
    implements $PaginationResponseCopyWith<T, $Res> {
  factory _$$PaginationResponseImplCopyWith(_$PaginationResponseImpl<T> value,
          $Res Function(_$PaginationResponseImpl<T>) then) =
      __$$PaginationResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int to,
      @JsonKey(defaultValue: 0) int from,
      @JsonKey(defaultValue: 0) int total,
      List<T> data,
      @JsonKey(name: 'current_page') int? currentPage,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'first_page_url') String firstPageUrl,
      @JsonKey(name: 'last_page_url') String lastPageUrl,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl});
}

/// @nodoc
class __$$PaginationResponseImplCopyWithImpl<T, $Res>
    extends _$PaginationResponseCopyWithImpl<T, $Res,
        _$PaginationResponseImpl<T>>
    implements _$$PaginationResponseImplCopyWith<T, $Res> {
  __$$PaginationResponseImplCopyWithImpl(_$PaginationResponseImpl<T> _value,
      $Res Function(_$PaginationResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? from = null,
    Object? total = null,
    Object? data = null,
    Object? currentPage = freezed,
    Object? lastPage = null,
    Object? perPage = null,
    Object? firstPageUrl = null,
    Object? lastPageUrl = null,
    Object? nextPageUrl = freezed,
    Object? prevPageUrl = freezed,
  }) {
    return _then(_$PaginationResponseImpl<T>(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PaginationResponseImpl<T> implements _PaginationResponse<T> {
  const _$PaginationResponseImpl(
      {@JsonKey(defaultValue: 0) required this.to,
      @JsonKey(defaultValue: 0) required this.from,
      @JsonKey(defaultValue: 0) required this.total,
      final List<T> data = const [],
      @JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'first_page_url') required this.firstPageUrl,
      @JsonKey(name: 'last_page_url') required this.lastPageUrl,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl})
      : _data = data;

  factory _$PaginationResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PaginationResponseImplFromJson(json, fromJsonT);

  @override
  @JsonKey(defaultValue: 0)
  final int to;
  @override
  @JsonKey(defaultValue: 0)
  final int from;
  @override
  @JsonKey(defaultValue: 0)
  final int total;
  final List<T> _data;
  @override
  @JsonKey()
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  @override
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;

  @override
  String toString() {
    return 'PaginationResponse<$T>(to: $to, from: $from, total: $total, data: $data, currentPage: $currentPage, lastPage: $lastPage, perPage: $perPage, firstPageUrl: $firstPageUrl, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, prevPageUrl: $prevPageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationResponseImpl<T> &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      to,
      from,
      total,
      const DeepCollectionEquality().hash(_data),
      currentPage,
      lastPage,
      perPage,
      firstPageUrl,
      lastPageUrl,
      nextPageUrl,
      prevPageUrl);

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationResponseImplCopyWith<T, _$PaginationResponseImpl<T>>
      get copyWith => __$$PaginationResponseImplCopyWithImpl<T,
          _$PaginationResponseImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PaginationResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _PaginationResponse<T> implements PaginationResponse<T> {
  const factory _PaginationResponse(
          {@JsonKey(defaultValue: 0) required final int to,
          @JsonKey(defaultValue: 0) required final int from,
          @JsonKey(defaultValue: 0) required final int total,
          final List<T> data,
          @JsonKey(name: 'current_page') required final int? currentPage,
          @JsonKey(name: 'last_page') required final int lastPage,
          @JsonKey(name: 'per_page') required final int perPage,
          @JsonKey(name: 'first_page_url') required final String firstPageUrl,
          @JsonKey(name: 'last_page_url') required final String lastPageUrl,
          @JsonKey(name: 'next_page_url') final String? nextPageUrl,
          @JsonKey(name: 'prev_page_url') final String? prevPageUrl}) =
      _$PaginationResponseImpl<T>;

  factory _PaginationResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PaginationResponseImpl<T>.fromJson;

  @override
  @JsonKey(defaultValue: 0)
  int get to;
  @override
  @JsonKey(defaultValue: 0)
  int get from;
  @override
  @JsonKey(defaultValue: 0)
  int get total;
  @override
  List<T> get data;
  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'first_page_url')
  String get firstPageUrl;
  @override
  @JsonKey(name: 'last_page_url')
  String get lastPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;

  /// Create a copy of PaginationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationResponseImplCopyWith<T, _$PaginationResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

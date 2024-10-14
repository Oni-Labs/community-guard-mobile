part of 'service_map_bloc.dart';

@freezed
class ServiceMapState with _$ServiceMapState {
  const factory ServiceMapState.initial({
    Position? position,
    @Default(GeoPointStatus.initial()) GeoPointStatus status,
  }) = Initial;
}

@freezed
class GeoPointStatus with _$GeoPointStatus {
  const factory GeoPointStatus.initial() = GeoPointInitial;
  const factory GeoPointStatus.loading() = GeoPointLoading;
  const factory GeoPointStatus.success(Position position) = GeoPointSuccess;
  const factory GeoPointStatus.failure(String error) = GeoPointFailure;
}

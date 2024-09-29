part of 'service_map_bloc.dart';

@freezed
class ServiceMapEvent with _$ServiceMapEvent {
  const factory ServiceMapEvent.started() = _Started;
}

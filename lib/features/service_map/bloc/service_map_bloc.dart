import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:community_guard_mobile/helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'service_map_event.dart';
part 'service_map_state.dart';
part 'service_map_bloc.freezed.dart';

class ServiceMapBloc extends Bloc<ServiceMapEvent, ServiceMapState> {
  ServiceMapBloc() : super(const ServiceMapState.initial()) {
    on<_Started>(_onStarted, transformer: droppable());
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<ServiceMapState> emit,
  ) async {
    try {
      emit(state.copyWith(status: const GeoPointStatus.loading()));
      final position = await _determinePosition();

      emit(state.copyWith(
          position: position, status: GeoPointStatus.success(position)));
    } catch (e, stack) {
      emit(state.copyWith(status: GeoPointStatus.failure(e.toString())));
      talker.handle(e, stack);
    }
  }

  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Serviço de localização não ativado');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Permissão não concedida');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Permissão não concedida para sempre, por favor, altere as configurações do seu dispositivo');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}

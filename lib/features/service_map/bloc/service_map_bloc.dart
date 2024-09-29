import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_map_event.dart';
part 'service_map_state.dart';
part 'service_map_bloc.freezed.dart';

class ServiceMapBloc extends Bloc<ServiceMapEvent, ServiceMapState> {
  ServiceMapBloc() : super(const ServiceMapState.initial()) {
    on<ServiceMapEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

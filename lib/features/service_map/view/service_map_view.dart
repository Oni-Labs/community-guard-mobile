import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../service_map.dart';

class ServiceMapView extends StatefulWidget {
  const ServiceMapView({super.key});

  @override
  State<ServiceMapView> createState() => _ServiceMapViewState();
}

class _ServiceMapViewState extends State<ServiceMapView> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _goToCurrentLocation(Position? position) {
    mapController?.animateCamera(
        CameraUpdate.newLatLng(LatLng(position!.latitude, position.longitude)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceMapBloc, ServiceMapState>(
      builder: (context, state) {
        CameraPosition initialPosition = CameraPosition(
          target: state.position != null
              ? LatLng(state.position!.latitude, state.position!.longitude)
              : const LatLng(-7.115, -34.861),
          zoom: 18,
        );

        return Scaffold(
          body: state.position != null
              ? Stack(
                  children: [
                    GoogleMap(
                      initialCameraPosition: initialPosition,
                      onMapCreated: _onMapCreated,
                      markers: markers,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: false,
                      mapToolbarEnabled: true,
                      padding: const EdgeInsets.only(top: 40),
                    ),
                    Positioned(
                      top: 60,
                      right: 20,
                      child: FloatingActionButton(
                        onPressed: () {
                          _goToCurrentLocation(state.position);
                        },
                        child: const Icon(Icons.my_location),
                      ),
                    ),
                  ],
                )
              : const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

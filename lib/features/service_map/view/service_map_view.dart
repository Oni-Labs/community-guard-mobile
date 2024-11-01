import 'package:community_guard_mobile/core/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../service_map.dart';

class ServiceMapView extends StatefulWidget {
  const ServiceMapView({super.key});

  @override
  State<ServiceMapView> createState() => _ServiceMapViewState();
}

class _ServiceMapViewState extends State<ServiceMapView> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    _loadLastKnownPosition();
  }

  Future<void> _loadLastKnownPosition() async {
    final prefs = await SharedPreferences.getInstance();
    final latitude = prefs.getDouble('last_latitude') ?? -7.115;
    final longitude = prefs.getDouble('last_longitude') ?? -34.861;
    final cachedPosition = Position(
      latitude: latitude,
      longitude: longitude,
      timestamp: DateTime.now(),
      accuracy: 0.0,
      altitude: 0.0,
      heading: 0.0,
      speed: 0.0,
      speedAccuracy: 0.0,
      altitudeAccuracy: 0.0,
      headingAccuracy: 0.0,
    );
    _goToCurrentLocation(cachedPosition);
  }

  Future<void> _cachePosition(Position position) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('last_latitude', position.latitude);
    await prefs.setDouble('last_longitude', position.longitude);
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _goToCurrentLocation(Position? position) {
    if (position != null) {
      mapController?.animateCamera(
        CameraUpdate.newLatLng(LatLng(position.latitude, position.longitude)),
      );
      _cachePosition(position); // Cacheia a posição atual
    }
  }

  @override
  void dispose() {
    mapController?.dispose();
    super.dispose();
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
                        onPressed: () => _goToCurrentLocation(state.position),
                        child: const Icon(Icons.my_location),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 20,
                      child: FloatingActionButton(
                        onPressed: () => const CreatePostRoute().go(context),
                        child: const Icon(LucideIcons.mapPinPlus),
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

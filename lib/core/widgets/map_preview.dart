import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServiceMapPreview extends StatelessWidget {
  const ServiceMapPreview({super.key, required this.location});

  final LatLng location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: SizedBox(
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: location,
              zoom: 16,
            ),
            markers: {
              Marker(
                markerId: const MarkerId('preview_location'),
                position: location,
                icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueRed,
                ),
              ),
            },
            zoomControlsEnabled: false,
            scrollGesturesEnabled: false,
            rotateGesturesEnabled: false,
            tiltGesturesEnabled: false,
            mapToolbarEnabled: false,
          ),
        ),
      ),
    );
  }
}

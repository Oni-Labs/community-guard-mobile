import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'map_preview_loading.dart';

class ServiceMapPreview extends StatefulWidget {
  const ServiceMapPreview({super.key, required this.location});

  final LatLng location;

  @override
  State<ServiceMapPreview> createState() => _ServiceMapPreviewState();
}

class _ServiceMapPreviewState extends State<ServiceMapPreview> {
  bool _isMapLoaded = false;
  // ignore: unused_field
  GoogleMapController? _mapController;

  void _checkMapLoaded(GoogleMapController controller) {
    setState(() {
      _isMapLoaded = true;
      _mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: SizedBox(
        height: 150,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: widget.location,
                  zoom: 16,
                ),
                markers: {
                  Marker(
                    markerId: const MarkerId('preview_location'),
                    position: widget.location,
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
                onMapCreated: _checkMapLoaded,
              ),
            ),
            if (!_isMapLoaded)
              const Positioned.fill(
                child: ServiceMapPreviewLoading(),
              ),
          ],
        ),
      ),
    );
  }
}

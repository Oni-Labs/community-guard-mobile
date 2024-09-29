import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
          child: FlutterMap(
            options: MapOptions(
              initialZoom: 16,
              initialCenter: location,
              interactionOptions: const InteractionOptions(
                flags: InteractiveFlag.none,
              ),
            ),
            children: [
              TileLayer(
                // Display map tiles from any source
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                // OSMF's Tile Server
                maxNativeZoom: 19,
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: location,
                    child: const Icon(Icons.circle),
                  ),
                ],
              ),
              const Scalebar(alignment: Alignment.bottomRight),
            ],
          ),
        ),
      ),
    );
  }
}

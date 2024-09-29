import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/entity/point.dart';
import '../../../core/entity/service_order.dart';
import '../service_map.dart';

class ServiceMapView extends StatefulWidget {
  const ServiceMapView({super.key});

  @override
  State<ServiceMapView> createState() => _ServiceMapViewState();
}

class _ServiceMapViewState extends State<ServiceMapView>
    with TickerProviderStateMixin {
  LatLng? _currentLocation;
  late final AnimatedMapController _mapController =
      AnimatedMapController(vsync: this);

  @override
  void initState() {
    super.initState();

    _getCurrentLocation();

    // Post frame callback para interações após o layout estar completo
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Código que depende do layout já estar completo.
      if (_currentLocation != null) {
        _mapController.mapController.move(_currentLocation!, 17.0);
      }
    });
  }

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return;
    }
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _currentLocation = LatLng(position.latitude, position.longitude);
    });

    // Mover o mapa para a localização atual
    _mapController.mapController.move(_currentLocation!, 17.0);
  }

  List<Marker> _listMaker(List<ServiceOrder> services) {
    return services
        .map(
          (e) => Marker(
            point: e.location.toLatLng(),
            child: Icon(
              Icons.circle_outlined,
              color: e.location.getColor(),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceMapBloc, ServiceMapState>(
      builder: (context, state) {
        // final services = state.services
        //     .where((e) => state.selectedStages
        //     .map((e) => e.id)
        //     .contains(e.stage.targetId))
        //     .toList();
        return Scaffold(
          body: FlutterMap(
            mapController: _mapController.mapController,
            options: const MapOptions(
              initialCenter: LatLng(-7.115, -34.861),
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
                maxNativeZoom: 19,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shadowColor: Colors.black38,
                      elevation: 12,
                      child: IconButton(
                        onPressed: _getCurrentLocation,
                        icon: const Icon(LucideIcons.filter),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shadowColor: Colors.black38,
                      elevation: 12,
                      child: IconButton(
                        onPressed: _getCurrentLocation,
                        icon: const Icon(Icons.gps_fixed),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(builder: (context) {
                  final camera = MapCamera.of(context);
                  return Transform.rotate(
                    angle: camera.rotationRad,
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                      shadowColor: Colors.black38,
                      elevation: 12,
                      child: IconButton(
                        onPressed: () async {
                          _mapController.animatedRotateTo(0);
                        },
                        icon: const Icon(Icons.navigation),
                      ),
                    ),
                  );
                }),
              ),
              CurrentLocationLayer(
                positionStream: const LocationMarkerDataStreamFactory()
                    .fromGeolocatorPositionStream(),
                headingStream: Platform.isAndroid || Platform.isIOS
                    ? const LocationMarkerDataStreamFactory()
                        .fromCompassHeadingStream()
                    : Stream<LocationMarkerHeading?>.value(null),
              ),
              PopupMarkerLayer(
                options: PopupMarkerLayerOptions(
                  markers: [],
                  // markers: _listMaker(services),
                  popupDisplayOptions: PopupDisplayOptions(
                      builder: (BuildContext context, Marker marker) {
                    // final service = services.firstWhere(
                    //         (e) => e.location.target!.toLatLng() == marker.point);
                    return Container(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Text(service.title ?? 'Serviço #${service.id}'),
                          // Text('Regional: ${service.regional}'),
                          // Text(
                          //     'Empresa: ${service.company ?? 'Empresa não informada'}'),
                          // Text(
                          //     'Latitude: ${service.location.target?.toLatLng().latitude}'),
                          // Text(
                          //     'Longitude: ${service.location.target?.toLatLng().longitude}'),
                          // Text(
                          //     'Data de Início Prevista: ${service.expectedStartDate != null ? DateFormat('dd/MM/yyyy HH:mm').format(service.expectedStartDate!) : 'Não Informado'}'),
                          // Text(
                          //     'Data de Término Prevista: ${service.expectedFinishDate != null ? DateFormat('dd/MM/yyyy HH:mm').format(service.expectedFinishDate!) : 'Não Informado'}'),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Scalebar(
                    padding: EdgeInsets.only(bottom: 50, right: 20),
                  ),
                ],
              ),
              RichAttributionWidget(
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () => launchUrl(
                        Uri.parse('https://openstreetmap.org/copyright')),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

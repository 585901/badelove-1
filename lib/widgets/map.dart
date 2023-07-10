// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;
  static const LatLng _center =
      LatLng(60.3913, 5.3221); // Koordinater for Bergen
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _markers.add(
        const Marker(
          markerId: MarkerId('bergen'),
          position: _center,
          infoWindow: InfoWindow(
            title: 'Bergen',
            snippet: 'Byen mellom de syv fjell',
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: const CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
      markers: _markers,
    );
  }
}

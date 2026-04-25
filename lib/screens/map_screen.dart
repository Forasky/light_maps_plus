import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({required this.position, super.key});

  final Position position;

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: MapController(),
      options: MapOptions(
        initialCenter: LatLng(
          widget.position.latitude,
          widget.position.longitude,
        ),
        initialZoom: 8,
        keepAlive: true,
      ),
      children: [ElevatedButton(onPressed: () {}, child: Text('Refresh'))],
    );
  }
}

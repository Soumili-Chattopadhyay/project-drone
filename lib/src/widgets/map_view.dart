import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(25.130461, 75.841786),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      buildingsEnabled: true,
      cameraTargetBounds: CameraTargetBounds.unbounded,
      compassEnabled: true,
      circles: const <Circle>{},
      gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
      indoorViewEnabled: true,
      layoutDirection: TextDirection.rtl,
      liteModeEnabled: false,
      mapToolbarEnabled: false,
      markers: const <Marker>{},
      minMaxZoomPreference: const MinMaxZoomPreference(0.5, 100),
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
      onCameraIdle: () {},
      onCameraMove: (position) {},
      onCameraMoveStarted: () {},
      onLongPress: (argument) {},
      onTap: (argument) {},
      padding: const EdgeInsets.all(12),
      polygons: const <Polygon>{},
      polylines: const <Polyline>{},
      rotateGesturesEnabled: false,
      scrollGesturesEnabled: true,
      tileOverlays: const <TileOverlay>{},
      tiltGesturesEnabled: true,
      trafficEnabled: true,
      zoomControlsEnabled: false,
      zoomGesturesEnabled: true,
    );
  }
}

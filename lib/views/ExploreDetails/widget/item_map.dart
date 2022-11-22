import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Item Map Widget
class ItemMap extends StatelessWidget {
  /// Item Map Widget constructor
  ItemMap({
    super.key,
    required this.aboutCountry,
  });

  /// item country
  final String aboutCountry;

  ///
  final Completer<GoogleMapController> _controller = Completer();

  /// Santec Commune position on Map
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(48.7031, 4.0292),
    zoom: 14.4746,
  );

  /// creating a new marker ID
  final String markerIdVal = 'marker_id_1';

  /// MarkerId Object
  late MarkerId markerId = MarkerId(markerIdVal);

  /// Create a new marker object
  late final Marker marker = Marker(
    markerId: markerId,
    position: const LatLng(48.7031, 4.0292),
    infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            "Where you'll be",
            style: TextStyle(
              fontFamily: 'ManropeRegular',
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Text(
          aboutCountry,
          maxLines: 3,
          style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 14),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: GoogleMap(
            // mapType: MapType.normal
            markers: <Marker>{marker},
            initialCameraPosition: _kGooglePlex,
            onMapCreated: _controller.complete,
          ),
        ),
      ],
    );
  }
}

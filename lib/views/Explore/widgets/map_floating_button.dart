import 'package:flutter/material.dart';

/// Map Floating Button
class MapFloatingButton extends StatefulWidget {
  ///constructor
  const MapFloatingButton({super.key});

  @override
  State<MapFloatingButton> createState() => _MapFloatingButtonState();
}

class _MapFloatingButtonState extends State<MapFloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF000000).withOpacity(0.8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.map, color: Color(0xFFFFFFFF)),
          SizedBox(width: 5),
          Text(
            'Map',
            style: TextStyle(
              fontFamily: 'ManropeBold',
              fontSize: 12,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

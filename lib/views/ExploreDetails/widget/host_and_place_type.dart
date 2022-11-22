import 'package:flutter/material.dart';

/// Host and Place Type widget
class HostAndPlaceType extends StatelessWidget {
  /// Host and Place Type widget constructor
  const HostAndPlaceType({
    super.key,
    required this.hostBy,
    required this.placeType,
  });

  /// Host by title
  final String hostBy;

  /// Place type
  final String placeType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text.rich(
        TextSpan(
          style: const TextStyle(
            fontFamily: 'ManropeRegular',
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
          children: [
            TextSpan(text: hostBy),
            const TextSpan(text: ' by '),
            TextSpan(text: placeType),
          ],
        ),
      ),
    );
  }
}

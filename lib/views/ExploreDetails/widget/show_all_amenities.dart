import 'package:flutter/material.dart';

/// Show All Amenities widget
class ShowAllAmenities extends StatelessWidget {
  /// Show All Amenities widget constructor
  const ShowAllAmenities({
    super.key,
    required this.offersCount,
  });

  /// item offers count
  final int offersCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0x61000000)),
      ),
      alignment: Alignment.center,
      child: Text(
        'Show all $offersCount amenities',
        style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 15),
      ),
    );
  }
}

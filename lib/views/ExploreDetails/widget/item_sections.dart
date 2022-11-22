import 'package:flutter/material.dart';

/// Item Section widget
class ItemSections extends StatelessWidget {
  /// Item Section widget constructor
  const ItemSections({
    super.key,
    required this.guests,
    required this.bedRoom,
    required this.bed,
    required this.sharedBath,
  });

  /// Section guests
  final int guests;

  /// Section bedrooms
  final int bedRoom;

  /// Section bed
  final int bed;

  /// Section sharedBath
  final int sharedBath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$guests  guests',
            style: const TextStyle(
              fontFamily: 'ManropeRegular',
              fontSize: 13,
            ),
          ),
          const Icon(Icons.circle, size: 4, color: Color(0xFF000000)),
          Text(
            '$bedRoom  bedRooms',
            style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 13),
          ),
          const Icon(Icons.circle, size: 4, color: Color(0xFF000000)),
          Text(
            '$bed  beds',
            style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 13),
          ),
          const Icon(Icons.circle, size: 4, color: Color(0xFF000000)),
          Text(
            '$bed  beds',
            style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 13),
          ),
          const Icon(Icons.circle, size: 4, color: Color(0xFF000000)),
          Text(
            '$sharedBath  bath',
            style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 13),
          ),
        ],
      ),
    );
  }
}

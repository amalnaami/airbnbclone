import 'package:flutter/material.dart';

/// Item About widget
class ItemAbout extends StatelessWidget {
  /// Item About widget constructor
  const ItemAbout({
    super.key,
    required this.aboutPlace,
  });

  /// Item about the place
  final String aboutPlace;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            aboutPlace,
            maxLines: 10,
            style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 14),
          ),
          const SizedBox(height: 10),
          const Text(
            'Show more >',
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontFamily: 'ManropeBold',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

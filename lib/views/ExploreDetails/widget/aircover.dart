import 'package:flutter/material.dart';

/// Air Cover widget
class AirCover extends StatelessWidget {
  /// Air Cover widget constructor
  const AirCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: const AssetImage('assets/images/aircover.jpeg'),
            width: MediaQuery.of(context).size.width / 2,
          ),
          const Text(
            'Every booking includes free protection from Host cancellations.',
            maxLines: 3,
            style: TextStyle(fontFamily: 'ManropeRegular', fontSize: 14),
          ),
          const SizedBox(height: 10),
          const Text(
            'Learn more',
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

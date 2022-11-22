import 'package:flutter/material.dart';

/// Overall Rating and Review widget
class OverallRatingReview extends StatelessWidget {
  /// Overall Rating and Review widget constructor
  const OverallRatingReview({
    super.key,
    required this.rate,
    required this.reviews,
  });

  /// Item rate
  final String rate;

  /// Item reviews
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(
              Icons.star_purple500_outlined,
              color: Color(0xFF000000),
              size: 20,
            ),
            const SizedBox(width: 5),
            Text(
              rate,
              style: const TextStyle(
                fontFamily: 'ManropeMedium',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.circle, size: 5, color: Color(0xFF000000)),
        ),
        Text(
          '$reviews reviews',
          style: const TextStyle(
            fontFamily: 'ManropeMedium',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

/// Rate and Review widget
class RateAndReview extends StatelessWidget {
  /// Rate and Review widget constructor
  const RateAndReview({
    super.key,
    required this.rating,
    required this.review,
    required this.isSuperHost,
  });

  /// Item rating
  final String rating;

  /// Item reviews
  final int review;

  /// Item Super Host
  final bool isSuperHost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Row(
            children: [
              const Icon(
                Icons.star_purple500_outlined,
                color: Color(0xFF000000),
                size: 15,
              ),
              const SizedBox(width: 5),
              Text(
                rating,
                style: const TextStyle(
                  fontFamily: 'ManropeRegular',
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.circle, size: 4, color: Color(0xFF000000)),
          ),
          Text(
            '$review  reviews',
            style: const TextStyle(
              decoration: TextDecoration.underline,
              fontFamily: 'ManropeRegular',
              fontSize: 13,
            ),
          ),
          if (isSuperHost)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.incomplete_circle_outlined,
                    color: Color(0xFF000000),
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Superhost',
                    style: TextStyle(
                      fontFamily: 'ManropeRegular',
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

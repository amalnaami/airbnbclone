import 'package:flutter/material.dart';

/// Show All Reviews widget
class ShowAllReviews extends StatelessWidget {
  /// Show All Reviews widget constructor
  const ShowAllReviews({
    super.key,
    required this.reviewCount,
  });

  /// Item reviews count
  final int reviewCount;

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
        'Show all $reviewCount reviews',
        style: const TextStyle(fontFamily: 'ManropeRegular', fontSize: 15),
      ),
    );
  }
}

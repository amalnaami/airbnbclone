import 'package:flutter/material.dart';

/// What Offers widget
class WhatOffers extends StatelessWidget {
  /// What Offers widget constructor
  const WhatOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        'What this palce offers',
        style: TextStyle(
          fontFamily: 'ManropeRegular',
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

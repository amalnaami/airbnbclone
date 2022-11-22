import 'package:flutter/material.dart';

/// Item Title widget
class ItemTitle extends StatelessWidget {
  /// Item Title widget constructor
  const ItemTitle({
    super.key,
    required this.title,
  });

  /// Item Title
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'ManropeRegular',
        fontSize: 22,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

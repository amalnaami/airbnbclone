import 'package:flutter/material.dart';

/// Label text widget
class LabelText extends StatelessWidget {
  /// Label text widget constructor
  const LabelText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Where to?',
          style: TextStyle(
            fontFamily: 'ManropeRegular',
            color: Color(0xFF000000),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        Text(
          'Anywhere, Any time, Add guests',
          style: TextStyle(
            fontFamily: 'ManropeRegular',
            color: Color(0x73000000),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

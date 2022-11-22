import 'package:flutter/material.dart';

/// Text Tabs widget
class TextTabs extends StatelessWidget {
  /// Text Tabs widget constructor
  const TextTabs({
    super.key,
    required this.text,
    required this.iconData,
  });

  /// Tab title
  final String text;

  /// Tab icon
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 20),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(fontFamily: 'ManropeMedium', fontSize: 12),
        ),
      ],
    );
  }
}

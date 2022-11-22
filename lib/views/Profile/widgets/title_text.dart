import 'package:airbnbclone/core/contstant/text_styles.dart';
import 'package:flutter/material.dart';

/// Title Text Widget
class TitleText extends StatelessWidget {
  /// Title Text widget constructor
  const TitleText({
    super.key,
    required this.title,
  });

  /// title text
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 25),
      child: Text(title, style: mediumTitle),
    );
  }
}

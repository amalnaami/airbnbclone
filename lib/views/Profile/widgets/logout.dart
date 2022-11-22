import 'package:airbnbclone/core/contstant/text_styles.dart';
import 'package:flutter/material.dart';

/// Logout widget
class Logout extends StatelessWidget {
  /// Logout widget constructor
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 25),
          child: Text('Log out', style: underLineText),
        ),
        const Divider(thickness: 0.5, color: Colors.black26),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 25),
          child: Text('Version 22.45.1 (26003345)', style: smallDesc),
        ),
      ],
    );
  }
}

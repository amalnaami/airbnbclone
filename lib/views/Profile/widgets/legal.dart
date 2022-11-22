import 'package:airbnbclone/views/Profile/widgets/profile_item.dart';
import 'package:airbnbclone/views/Profile/widgets/title_text.dart';
import 'package:flutter/material.dart';

/// Legal widget
class Legal extends StatelessWidget {
  /// Legal widget constructor
  const Legal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleText(title: 'Legal'),
        ProfileItem(
          text: 'Terms of Services',
          iconData: Icons.terminal_sharp,
        ),
        ProfileItem(
          text: 'Privacy Policy',
          iconData: Icons.terminal_sharp,
        ),
      ],
    );
  }
}

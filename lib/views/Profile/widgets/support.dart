import 'package:airbnbclone/views/Profile/widgets/profile_item.dart';
import 'package:airbnbclone/views/Profile/widgets/title_text.dart';
import 'package:flutter/material.dart';

/// Support widget
class Support extends StatelessWidget {
  /// Support widget constructor
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleText(title: 'Support'),
        ProfileItem(
          text: 'How Airbnb works',
          iconData: Icons.abc,
        ),
        ProfileItem(
          text: 'Safety Center',
          iconData: Icons.safety_check,
          description:
              'Get the support, tools, and information vou need to be safe',
        ),
        ProfileItem(
          text: 'Contact Neighborhood Support',
          iconData: Icons.headphones,
          description:
              'Let our team know about concerns related to home activity.',
        ),
        ProfileItem(
          text: 'Get Help',
          iconData: Icons.question_mark_rounded,
        ),
        ProfileItem(
          text: 'Give us feedback',
          iconData: Icons.edit_outlined,
        ),
      ],
    );
  }
}

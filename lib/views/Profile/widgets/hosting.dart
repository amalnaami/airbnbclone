import 'package:airbnbclone/views/Profile/widgets/profile_item.dart';
import 'package:airbnbclone/views/Profile/widgets/title_text.dart';
import 'package:flutter/material.dart';

/// Hosting widget
class Hosting extends StatelessWidget {
  /// Hosting constructor
  const Hosting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleText(title: 'Hosting'),
        ProfileItem(
          text: 'List your space',
          iconData: Icons.add_home_work_outlined,
        ),
        ProfileItem(
          text: 'Learn about hosting',
          iconData: Icons.houseboat_outlined,
        ),
        ProfileItem(
          text: 'Host an Experience',
          iconData: Icons.gite,
        ),
      ],
    );
  }
}

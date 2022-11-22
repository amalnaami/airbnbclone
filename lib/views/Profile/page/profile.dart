import 'package:airbnbclone/core/contstant/text_styles.dart';
import 'package:airbnbclone/views/Profile/widgets/account_setting.dart';
import 'package:airbnbclone/views/Profile/widgets/hosting.dart';
import 'package:airbnbclone/views/Profile/widgets/legal.dart';
import 'package:airbnbclone/views/Profile/widgets/logout.dart';
import 'package:airbnbclone/views/Profile/widgets/profile_item.dart';
import 'package:airbnbclone/views/Profile/widgets/support.dart';
import 'package:flutter/material.dart';

/// Profile Page
class Profile extends StatelessWidget {
  /// Profile page constructor
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 100,
          right: 25,
          left: 25,
          bottom: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Profile', style: largeTitle),
            const SizedBox(height: 30),
            const ProfileItem(
              text: 'Amal Naami',
              isProfileSection: false,
              description: 'Show profile',
              image:
                  'https://trendyartideas.com/wp-content/uploads/2020/04/Female-Portrait-Scribble.jpg',
            ),
            const AccountSetting(),
            const Hosting(),
            const Support(),
            const Legal(),
            const Logout(),
          ],
        ),
      ),
    );
  }
}

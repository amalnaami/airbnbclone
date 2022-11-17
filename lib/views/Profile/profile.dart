import 'package:airbnbclone/views/Profile/widgets/profile_item.dart';
import 'package:flutter/material.dart';

import '../../contstant/text_styles.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          padding:
              const EdgeInsets.only(top: 100, right: 25, left: 25, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Profile', style: largeTitle),
              const SizedBox(height: 30),
              profile(),
              accountSetting(),
              hosting(),
              support(),
              legal(),
              logOut(),
            ],
          )),
    );
  }

  Widget titles(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
      child: Text(text, style: mediumTitle),
    );
  }

  Widget profile() {
    return const ProfileItem(
      text: 'Amal Naami',
      isProfileSection: false,
      description: 'Show profile',
      image:
          'https://trendyartideas.com/wp-content/uploads/2020/04/Female-Portrait-Scribble.jpg',
    );
  }

  Widget accountSetting() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titles('Account Setting'),
        const ProfileItem(
          text: 'Personal information',
          iconData: Icons.supervised_user_circle_outlined,
        ),
        const ProfileItem(
          text: 'Payments and payouts',
          iconData: Icons.payments_outlined,
        ),
        const ProfileItem(
          text: 'Translation',
          iconData: Icons.language_sharp,
        ),
        const ProfileItem(
          text: 'Notification',
          iconData: Icons.notifications_none_sharp,
        ),
        const ProfileItem(
          text: 'Privacy and sharing',
          iconData: Icons.lock_outline,
        ),
        const ProfileItem(
          text: 'Travel for work',
          iconData: Icons.card_travel_outlined,
        ),
      ],
    );
  }

  Widget hosting() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titles('Hosting'),
        const ProfileItem(
          text: 'List your space',
          iconData: Icons.add_home_work_outlined,
        ),
        const ProfileItem(
          text: 'Learn about hosting',
          iconData: Icons.houseboat_outlined,
        ),
        const ProfileItem(
          text: 'Host an Experience',
          iconData: Icons.gite,
        ),
      ],
    );
  }

  Widget support() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titles('Support'),
        const ProfileItem(
          text: 'How Airbnb works',
          iconData: Icons.abc,
        ),
        const ProfileItem(
          text: 'Safety Center',
          iconData: Icons.safety_check,
          description:
              'Get the support, tools, and information vou need to be safe',
        ),
        const ProfileItem(
          text: 'Contact Neighborhood Support',
          iconData: Icons.headphones,
          description:
              'Let our team know about concerns related to home sharing activity in your area.',
        ),
        const ProfileItem(
          text: 'Get Help',
          iconData: Icons.question_mark_rounded,
        ),
        const ProfileItem(
          text: 'Give us feedback',
          iconData: Icons.edit_outlined,
        ),
      ],
    );
  }

  Widget legal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titles('Legal'),
        const ProfileItem(
          text: 'Terms of Services',
          iconData: Icons.terminal_sharp,
        ),
        const ProfileItem(
          text: 'Privacy Policy',
          iconData: Icons.terminal_sharp,
        ),
      ],
    );
  }

  Widget logOut() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
          child: Text(
            'Log out',
            style: underLineText,
          ),
        ),
        const Divider(
          thickness: 0.5,
          color: Colors.black26,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
          child: Text(
            'Version 22.45.1 (26003345)',
            style: smallDesc,
          ),
        ),
      ],
    );
  }
}

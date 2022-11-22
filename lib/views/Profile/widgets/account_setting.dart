import 'package:airbnbclone/views/Profile/widgets/profile_item.dart';
import 'package:airbnbclone/views/Profile/widgets/title_text.dart';
import 'package:flutter/material.dart';

/// Account Setting Widget
class AccountSetting extends StatelessWidget {
  /// constructor
  const AccountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleText(title: 'Account Setting'),
        ProfileItem(
          text: 'Personal information',
          iconData: Icons.supervised_user_circle_outlined,
        ),
        ProfileItem(
          text: 'Payments and payouts',
          iconData: Icons.payments_outlined,
        ),
        ProfileItem(
          text: 'Translation',
          iconData: Icons.language_sharp,
        ),
        ProfileItem(
          text: 'Notification',
          iconData: Icons.notifications_none_sharp,
        ),
        ProfileItem(
          text: 'Privacy and sharing',
          iconData: Icons.lock_outline,
        ),
        ProfileItem(
          text: 'Travel for work',
          iconData: Icons.card_travel_outlined,
        ),
      ],
    );
  }
}

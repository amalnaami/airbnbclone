// ignore_for_file: must_be_immutable

import 'package:airbnbclone/core/contstant/text_styles.dart';
import 'package:flutter/material.dart';

/// Profile Item widget
class ProfileItem extends StatelessWidget {
  /// Profile Item Widget constructor
  const ProfileItem({
    super.key,
    required this.text,
    this.iconData,
    this.description = '',
    this.image,
    this.isProfileSection = true,
  });

  /// User name
  final String text;

  /// user description
  final String? description;

  /// user image
  final String? image;

  /// is profile section
  final bool isProfileSection;

  /// profile icon
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isProfileSection)
                Icon(iconData, color: Colors.black87)
              else
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(image!),
                ),
              const SizedBox(width: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text, style: mediumDesc),
                    if (description != '')
                      Column(
                        children: [
                          const SizedBox(height: 5),
                          Text(description!, maxLines: 5, style: smallDesc),
                        ],
                      ),
                  ],
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 15,
              ),
            ],
          ),
        ),
        const Divider(thickness: 0.5, color: Colors.black26),
      ],
    );
  }
}

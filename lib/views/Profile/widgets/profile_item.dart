// ignore_for_file: must_be_immutable

import 'package:airbnbclone/contstant/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.text,
    this.iconData,
    this.description = '',
    this.image,
    this.isProfileSection = true,
  }) : super(key: key);
  final String text;
  final String? description;
  final String? image;
  final bool isProfileSection;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (isProfileSection)
                    ? Icon(
                        iconData!,
                        color: Colors.black87,
                      )
                    : CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(image!),
                      ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: mediumDesc,
                      ),
                      if (description != '')
                        Column(
                          children: [
                            const SizedBox(height: 5),
                            Text(
                              description!,
                              maxLines: 5,
                              style: smallDesc,
                            ),
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
            )),
        const Divider(
          thickness: 0.5,
          color: Colors.black26,
        ),
      ],
    );
  }
}

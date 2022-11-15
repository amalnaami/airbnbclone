import 'package:flutter/cupertino.dart';

class Services {
  final String title;
  final IconData image;
  final String description;

  Services({
    required this.title,
    required this.image,
    required this.description,
  });

  factory Services.fromJson(Map<String, dynamic> json) => Services(
        title: json["tilte"],
        image: json["image"],
        description: json["description"],
      );
}

import 'package:flutter/cupertino.dart';

/// Services model class
class Services {
  /// constructor
  Services({
    required this.title,
    required this.image,
    required this.description,
  });

  /// convert from JSON to Data Map<>
  factory Services.fromJson(Map<String, dynamic> json) => Services(
        title: json['title'] as String,
        image: json['image'] as IconData,
        description: json['description'] as String,
      );

  /// Service title
  final String title;

  /// Service image
  final IconData image;

  /// Service dexcription
  final String description;
}

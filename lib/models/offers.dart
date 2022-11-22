import 'package:flutter/cupertino.dart';

/// Offers model class
class Offers {
  /// constructor
  Offers({
    required this.name,
    required this.image,
  });

  /// convert from JSON to Data Map<>
  factory Offers.fromJson(Map<String, dynamic> json) => Offers(
        name: json['name'] as String,
        image: json['image'] as IconData,
      );

  /// Offer name
  final String name;

  /// Offer image
  final IconData image;
}

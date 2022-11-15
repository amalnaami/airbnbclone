import 'package:flutter/cupertino.dart';

class Offers {
  final String name;
  final IconData image;

  Offers({
    required this.name,
    required this.image,
  });

  factory Offers.fromJson(Map<String, dynamic> json) => Offers(
        name: json["name"],
        image: json["image"],
      );
}

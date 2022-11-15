import 'package:airbnbclone/models/host_model.dart';
import 'package:airbnbclone/models/offers.dart';
import 'package:airbnbclone/models/reviews.dart';
import 'package:airbnbclone/models/services.dart';

class ExploreModel {
  final List<String> images;
  final String fullName;
  final String distance;
  final String availableTime;
  final String price;
  final double rate;
  bool isFav;
  final String nameDescription;
  final bool isSuperHost;
  final HostData hostModel;
  final String aboutPlace;
  final String aboutCountry;
  final List<double> location;
  final List<Offers> offers;
  final List<Reviews> reviews;
  final List<Services> additionServices;
  final String rules;
  final String health;
  final String policy;

  ExploreModel({
    required this.images,
    required this.fullName,
    required this.distance,
    required this.availableTime,
    required this.price,
    required this.rate,
    required this.isFav,
    required this.nameDescription,
    required this.isSuperHost,
    required this.hostModel,
    required this.aboutPlace,
    required this.aboutCountry,
    required this.location,
    required this.offers,
    required this.reviews,
    required this.additionServices,
    required this.rules,
    required this.health,
    required this.policy,
  });

  factory ExploreModel.fromJson(Map<String, dynamic> json) => ExploreModel(
        images: json["images"],
        fullName: json["fullName"],
        distance: json["distance"],
        availableTime: json["availableTime"],
        price: json["price"],
        rate: json["rate"],
        isFav: json["isFav"],
        nameDescription: json["nameDescription"],
        isSuperHost: json["isSuperHost"],
        hostModel: HostData.fromJson(json["host"]),
        aboutPlace: json["aboutPlace"],
        aboutCountry: json["aboutCountry"],
        location: json["location"],
        offers: List<Offers>.from(
          json["offers"].map((x) => Offers.fromJson(x)),
        ),
        reviews: List<Reviews>.from(
          json["reviews"].map((x) => Reviews.fromJson(x)),
        ),
        additionServices: List<Services>.from(
          json["additionServices"].map((x) => Services.fromJson(x)),
        ),
        rules: json["rules"],
        health: json["health"],
        policy: json["policy"],
      );
}

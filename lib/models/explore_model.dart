import 'package:airbnbclone/models/host_model.dart';
import 'package:airbnbclone/models/offers.dart';
import 'package:airbnbclone/models/reviews.dart';
import 'package:airbnbclone/models/services.dart';

/// Explore Page data model
class ExploreModel {
  /// Data model constructor
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

  /// convert json into Data Map<>
  factory ExploreModel.fromJson(Map<String, dynamic> json) => ExploreModel(
        images: json['images'] as List<String>,
        fullName: json['fullName'] as String,
        distance: json['distance'] as String,
        availableTime: json['availableTime'] as String,
        price: json['price'] as String,
        rate: json['rate'] as double,
        isFav: json['isFav'] as bool,
        nameDescription: json['nameDescription'] as String,
        isSuperHost: json['isSuperHost'] as bool,
        hostModel: json['host'] as HostData,
        aboutPlace: json['aboutPlace'] as String,
        aboutCountry: json['aboutCountry'] as String,
        location: json['location'] as List<double>,
        offers: List<Offers>.from(
          (json['offers'] as List<double>).map((x) => Offers.fromJson),
        ),
        reviews: List<Reviews>.from(
          (json['reviews'] as List<Reviews>).map((x) => Reviews.fromJson),
        ),
        additionServices: List<Services>.from(
          (json['additionServices'] as List<Services>)
              .map((x) => Services.fromJson),
        ),
        rules: json['rules'] as String,
        health: json['health'] as String,
        policy: json['policy'] as String,
      );

  /// images list
  final List<String> images;

  /// item full name
  final String fullName;

  /// item distance
  final String distance;

  /// item available time
  final String availableTime;

  /// item price
  final String price;

  /// item rate
  final double rate;

  /// is item fav?
  bool isFav;

  /// item description
  final String nameDescription;

  /// does item super host?
  final bool isSuperHost;

  /// item host model
  final HostData hostModel;

  /// item about its place
  final String aboutPlace;

  /// item country
  final String aboutCountry;

  /// item location
  final List<double> location;

  /// item offers
  final List<Offers> offers;

  /// item reviews
  final List<Reviews> reviews;

  /// item addition services
  final List<Services> additionServices;

  /// item rules
  final String rules;

  /// item health
  final String health;

  /// item policies
  final String policy;
}

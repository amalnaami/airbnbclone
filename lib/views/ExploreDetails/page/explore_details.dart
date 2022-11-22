import 'package:airbnbclone/models/explore_model.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/aircover.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/host_and_place_type.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_about.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_addition_services.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_extra_options.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_image_slider.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_map.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_offers.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_sections.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_title.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/overall_rating_review.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/rate_and_review.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/report_list.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/reserve_button.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/reviews_view.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/show_all_amenities.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/show_all_reviews.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/what_offers.dart';
import 'package:flutter/material.dart';

/// Explore Details page
class ExploreDetails extends StatefulWidget {
  /// Explore page constructor
  const ExploreDetails({
    super.key,
    required this.exploreModel,
  });

  /// Explore model
  final ExploreModel exploreModel;

  @override
  State<ExploreDetails> createState() => _ExploreDetailsState();
}

class _ExploreDetailsState extends State<ExploreDetails> {
  int indexPage = 0;
  bool isSelected1 = false;
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(
                children: [
                  ItemImageSlider(
                    onImageSlide: (v) {
                      indexPage = v;
                      setState(() {});
                    },
                    images: widget.exploreModel.images,
                    likeAction: () {
                      setState(() {
                        widget.exploreModel.isFav = !widget.exploreModel.isFav;
                      });
                    },
                    isFav: widget.exploreModel.isFav,
                    indexPage: indexPage,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ItemTitle(title: widget.exploreModel.nameDescription),
                        RateAndReview(
                          rating: widget.exploreModel.rate.toString(),
                          review: widget.exploreModel.reviews.length,
                          isSuperHost: widget.exploreModel.isSuperHost,
                        ),
                        const Divider(thickness: 1),
                        HostAndPlaceType(
                          hostBy: widget.exploreModel.hostModel.hostBy,
                          placeType: widget.exploreModel.hostModel.placeType,
                        ),
                        ItemSections(
                          guests: widget.exploreModel.hostModel.guests,
                          bedRoom: widget.exploreModel.hostModel.bedRoom,
                          bed: widget.exploreModel.hostModel.bed,
                          sharedBath: widget.exploreModel.hostModel.sharedBath,
                        ),
                        const Divider(thickness: 1),
                        ItemAdditionServices(
                          additionServices:
                              widget.exploreModel.additionServices,
                        ),
                        const Divider(thickness: 1),
                        const AirCover(),
                        const Divider(thickness: 1),
                        ItemAbout(aboutPlace: widget.exploreModel.aboutPlace),
                        const Divider(thickness: 1),
                        const WhatOffers(),
                        ItemOffers(offers: widget.exploreModel.offers),
                        ShowAllAmenities(
                          offersCount: widget.exploreModel.offers.length,
                        ),
                        const Divider(thickness: 1),
                        ItemMap(aboutCountry: widget.exploreModel.aboutCountry),
                        const Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              OverallRatingReview(
                                rate: widget.exploreModel.rate.toString(),
                                reviews: widget.exploreModel.reviews.length,
                              ),
                              ReviewsView(
                                reviewsView: widget.exploreModel.reviews,
                              ),
                              ShowAllReviews(
                                reviewCount: widget.exploreModel.reviews.length,
                              ),
                              const Divider(thickness: 1),
                              ItemExtraOptions(
                                title: 'Availability',
                                extraDetails: widget.exploreModel.availableTime,
                              ),
                              const Divider(thickness: 1),
                              ItemExtraOptions(
                                title: 'House rules',
                                extraDetails: widget.exploreModel.rules,
                              ),
                              const Divider(thickness: 1),
                              ItemExtraOptions(
                                title: 'Health  & saftey',
                                extraDetails: widget.exploreModel.health,
                              ),
                              const Divider(thickness: 1),
                              ItemExtraOptions(
                                title: 'Cancellation policy',
                                extraDetails: widget.exploreModel.policy,
                              ),
                              const Divider(thickness: 1),
                              const ReportList(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ReserveButton(
                price: widget.exploreModel.price,
                availableTime: widget.exploreModel.availableTime,
                isSelected1: isSelected1,
                isSelected2: isSelected2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

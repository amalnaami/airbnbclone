import 'package:airbnbclone/models/explore_model.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/item_image_slider.dart';
import 'package:airbnbclone/views/ExploreDetails/widget/reserve_button.dart';
import 'package:flutter/material.dart';

class ExploreDetails extends StatefulWidget {
  final ExploreModel exploreModel;

  const ExploreDetails({
    Key? key,
    required this.exploreModel,
  }) : super(key: key);

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
                        Text(
                          widget.exploreModel.nameDescription,
                          style: const TextStyle(
                            fontFamily: 'ManropeRegular',
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_purple500_outlined,
                                    color: Color(0xFF000000),
                                    size: 15,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    widget.exploreModel.rate.toString(),
                                    style: const TextStyle(
                                      fontFamily: 'ManropeRegular',
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                '${widget.exploreModel.reviews.length}  reviews',
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 13,
                                ),
                              ),
                              if (widget.exploreModel.isSuperHost)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.incomplete_circle_outlined,
                                        color: Color(0xFF000000),
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Superhost',
                                        style: TextStyle(
                                          fontFamily: 'ManropeRegular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text.rich(
                            TextSpan(
                              style: const TextStyle(
                                fontFamily: 'ManropeRegular',
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                              ),
                              children: [
                                TextSpan(
                                  text: widget.exploreModel.hostModel.hostBy,
                                ),
                                const TextSpan(text: ' by '),
                                TextSpan(
                                  text: widget.exploreModel.hostModel.placeType,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${widget.exploreModel.hostModel.guests}  guests',
                                style: const TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 13,
                                ),
                              ),
                              const Icon(
                                Icons.circle,
                                size: 4,
                                color: Color(0xFF000000),
                              ),
                              Text(
                                '${widget.exploreModel.hostModel.bedRoom}  bedRooms',
                                style: const TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 13,
                                ),
                              ),
                              const Icon(
                                Icons.circle,
                                size: 4,
                                color: Color(0xFF000000),
                              ),
                              Text(
                                '${widget.exploreModel.hostModel.bed}  beds',
                                style: const TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 13,
                                ),
                              ),
                              const Icon(
                                Icons.circle,
                                size: 4,
                                color: Color(0xFF000000),
                              ),
                              Text(
                                '${widget.exploreModel.hostModel.bed}  beds',
                                style: const TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 13,
                                ),
                              ),
                              const Icon(
                                Icons.circle,
                                size: 4,
                                color: Color(0xFF000000),
                              ),
                              Text(
                                '${widget.exploreModel.hostModel.sharedBath}  bath',
                                style: const TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(thickness: 1),
                        SizedBox(
                          height:
                              widget.exploreModel.additionServices.length * 60,
                          child: ListView.builder(
                            shrinkWrap: false,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.only(top: 20),
                            itemCount:
                                widget.exploreModel.additionServices.length,
                            itemBuilder: (context, index) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    widget.exploreModel.additionServices[index]
                                        .image,
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.exploreModel
                                              .additionServices[index].title,
                                          style: const TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          widget
                                              .exploreModel
                                              .additionServices[index]
                                              .description,
                                          maxLines: 3,
                                          style: const TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              );
                            },
                          ),
                        ),
                        const Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/aircover.jpeg',
                                width: MediaQuery.of(context).size.width / 2,
                              ),
                              const Text(
                                'Every booking includes free protection from Host cancellations, listing inaccuracies, and other issues like trouble checking in.',
                                maxLines: 3,
                                style: TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Learn more',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'ManropeBold',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.exploreModel.aboutPlace,
                                maxLines: 10,
                                style: const TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Show more >',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'ManropeBold',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(thickness: 1),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            'What this palce offers',
                            style: TextStyle(
                              fontFamily: 'ManropeRegular',
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: widget.exploreModel.offers.length * 30,
                          child: ListView.builder(
                            shrinkWrap: false,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.exploreModel.offers.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.exploreModel.offers[index].name,
                                      style: const TextStyle(
                                        fontFamily: 'ManropeRegular',
                                        fontSize: 15,
                                      ),
                                    ),
                                    Icon(
                                      widget.exploreModel.offers[index].image,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20.0),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black38, width: 1),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Show all ${widget.exploreModel.offers.length} amenities',
                            style: const TextStyle(
                              fontFamily: 'ManropeRegular',
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Divider(thickness: 1),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20.0, bottom: 10),
                              child: Text(
                                'Where you\'ll be',
                                style: TextStyle(
                                  fontFamily: 'ManropeRegular',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Text(
                              widget.exploreModel.aboutCountry,
                              maxLines: 3,
                              style: const TextStyle(
                                fontFamily: 'ManropeRegular',
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width / 1.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                        const Divider(thickness: 1),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_purple500_outlined,
                                        color: Color(0xFF000000),
                                        size: 20,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        widget.exploreModel.rate.toString(),
                                        style: const TextStyle(
                                          fontFamily: 'ManropeMedium',
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Icon(
                                      Icons.circle,
                                      size: 5,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                  Text(
                                    '${widget.exploreModel.reviews.length} reviews',
                                    style: const TextStyle(
                                      fontFamily: 'ManropeMedium',
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                height: MediaQuery.of(context).size.width / 2.5,
                                child: ListView.builder(
                                  itemCount: widget.exploreModel.reviews.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin:
                                          const EdgeInsets.only(right: 20.0),
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black38,
                                          width: 1,
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundImage: NetworkImage(
                                                  widget.exploreModel
                                                      .reviews[index].image,
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    widget.exploreModel
                                                        .reviews[index].name,
                                                    style: const TextStyle(
                                                      fontFamily:
                                                          'ManropeRegular',
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    widget.exploreModel
                                                        .reviews[index].time,
                                                    style: const TextStyle(
                                                      fontFamily:
                                                          'ManropeRegular',
                                                      fontSize: 15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            widget.exploreModel.reviews[index]
                                                .description,
                                            style: const TextStyle(
                                              fontFamily: 'ManropeRegular',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black38,
                                    width: 1,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  'Show all ${widget.exploreModel.reviews.length} reviews',
                                  style: const TextStyle(
                                    fontFamily: 'ManropeRegular',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Availability',
                                          style: TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          widget.exploreModel.availableTime,
                                          maxLines: 3,
                                          style: const TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'House rules',
                                          style: TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          widget.exploreModel.rules,
                                          maxLines: 3,
                                          style: const TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Health  & saftey',
                                          style: TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          widget.exploreModel.health,
                                          maxLines: 3,
                                          style: const TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Cancellation policy',
                                          style: TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 22,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              100,
                                          child: Text(
                                            widget.exploreModel.policy,
                                            style: const TextStyle(
                                              fontFamily: 'ManropeRegular',
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              const Divider(thickness: 1),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 60,
                                ),
                                child: Row(
                                  children: const [
                                    Icon(Icons.flag, size: 20),
                                    SizedBox(width: 10),
                                    Text(
                                      'Report this listing',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'ManropeRegular',
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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

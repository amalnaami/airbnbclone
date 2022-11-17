// ignore_for_file: must_be_immutable

import 'package:airbnbclone/contstant/text_styles.dart';
import 'package:airbnbclone/models/explore_model.dart';
import 'package:flutter/material.dart';

class ExploreDetails extends StatefulWidget {
  ExploreDetails({Key? key, required this.exploreModel}) : super(key: key);
  ExploreModel exploreModel;

  @override
  State<ExploreDetails> createState() => _ExploreDetailsState();
}

class _ExploreDetailsState extends State<ExploreDetails> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Stack(
                      children: [
                        PageView.builder(
                            onPageChanged: (v) {
                              indexPage = v;
                              setState(() {});
                            },
                            itemCount: widget.exploreModel.images.length,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 3,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(widget
                                              .exploreModel.images[index]),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Positioned(
                                    top: 50,
                                    left: 10,
                                    right: 10,
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.grey[100]!,
                                            child: const Icon(
                                              Icons.arrow_back_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const Spacer(),
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.grey[100]!,
                                            child: const Icon(
                                              Icons.upload_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                              onTap: () {
                                                widget.exploreModel.isFav =
                                                    !widget.exploreModel.isFav;
                                                setState(() {});
                                              },
                                              child: CircleAvatar(
                                                radius: 20,
                                                backgroundColor:
                                                    Colors.grey[100]!,
                                                child: Icon(
                                                  widget.exploreModel.isFav
                                                      ? Icons.favorite
                                                      : Icons
                                                          .favorite_border_outlined,
                                                  color:
                                                      widget.exploreModel.isFav
                                                          ? Colors.red[900]
                                                          : Colors.black,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                        Positioned(
                          right: 10,
                          bottom: 10,
                          child: Container(
                              padding: const EdgeInsets.all(10.0),
                              width: widget.exploreModel.images.length * 15,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black.withOpacity(0.7)),
                              child: Text(
                                '${indexPage + 1} / ${widget.exploreModel.images.length}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontFamily: 'ManropeRegular',
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        )
                      ],
                    ),
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
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
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
                                  color: Colors.black,
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
                                      horizontal: 10.0),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.incomplete_circle_outlined,
                                        color: Colors.black,
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
                                const TextSpan(
                                  text: ' by ',
                                ),
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                                color: Colors.black,
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
                                    Icon(widget.exploreModel
                                        .additionServices[index].image),
                                    const SizedBox(
                                      width: 20,
                                    ),
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
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                );
                              }),
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
                                    fontWeight: FontWeight.bold),
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
                                    fontWeight: FontWeight.bold),
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
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          widget
                                              .exploreModel.offers[index].name,
                                          style: const TextStyle(
                                            fontFamily: 'ManropeRegular',
                                            fontSize: 15,
                                          ),
                                        ),
                                        Icon(
                                          widget
                                              .exploreModel.offers[index].image,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  );
                                })),
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
                                  color: Colors.amber),
                            )
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
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
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
                                      color: Colors.black,
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
                                    itemCount:
                                        widget.exploreModel.reviews.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin:
                                            const EdgeInsets.only(right: 20.0),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.black38, width: 1),
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
                                                      widget
                                                          .exploreModel
                                                          .reviews[index]
                                                          .image),
                                                ),
                                                const SizedBox(
                                                  width: 20,
                                                ),
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
                                                              FontWeight.bold),
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
                                            const SizedBox(
                                              height: 10,
                                            ),
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
                                    }),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.black38, width: 1),
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
                                    top: 20.0, bottom: 10),
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
                                    top: 20.0, bottom: 10),
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
                                    top: 20.0, bottom: 10),
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
                                    top: 20.0, bottom: 10),
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
                                    top: 20.0, bottom: 60),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.flag,
                                      size: 20,
                                    ),
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
              Positioned(
                bottom: 0,
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(width: 1, color: Colors.black12))),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: widget.exploreModel.price,
                                  style: const TextStyle(
                                    fontFamily: 'ManropeBold',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                const TextSpan(
                                  text: '  night',
                                  style: TextStyle(
                                    fontFamily: 'ManropeBold',
                                    color: Colors.black87,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text(
                              widget.exploreModel.availableTime,
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'ManropeBold',
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          _modalBottomSheetMenu();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.pink[400]),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: const Text(
                            'Reserve',
                            style: TextStyle(
                              fontFamily: 'ManropeBold',
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool isSelected1 = false;
  bool isSelected2 = false;

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        context: context,
        builder: (builder) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setStater) {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          'Choose a cancellation policy',
                          style: smallTitle.copyWith(fontSize: 15),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setStater(() {
                        isSelected1 = !isSelected1;
                        isSelected2 = false;
                      });
                    },
                    child: cancellationOptions('Non-refundable',
                        '\$ 333 /  night - \$ 2,003 total', isSelected1),
                  ),
                  InkWell(
                      onTap: () {
                        setStater(() {
                          isSelected2 = !isSelected2;
                          isSelected1 = false;
                        });
                      },
                      child: cancellationOptions('Refundable',
                          '\$ 370 /  night - \$ 2,254 total', isSelected2)),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink[400]),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'ManropeBold',
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }

  Widget cancellationOptions(String title, String desc, bool isSelect) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: mediumDesc,
                ),
                const SizedBox(height: 5),
                Text(
                  desc,
                  style: smallDesc,
                ),
              ],
            ),
            isSelect
                ? Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 6),
                        shape: BoxShape.circle),
                  )
                : const Icon(
                    Icons.circle_outlined,
                    color: Colors.black38,
                  )
          ],
        ));
  }
}

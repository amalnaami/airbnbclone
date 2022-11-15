// ignore_for_file: must_be_immutable

import 'package:airbnbclone/models/explore_model.dart';
import 'package:airbnbclone/views/ExploreDetails/explore_details.dart';
import 'package:flutter/material.dart';

class ExploreItem extends StatefulWidget {
  ExploreItem({Key? key, required this.exploreModel}) : super(key: key);
  ExploreModel exploreModel;

  @override
  State<ExploreItem> createState() => _ExploreItemState();
}

class _ExploreItemState extends State<ExploreItem> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ExploreDetails(exploreModel: widget.exploreModel)),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                alignment: Alignment.bottomCenter,
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
                              height: MediaQuery.of(context).size.height / 3,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.exploreModel.images[index]),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: InkWell(
                                  onTap: () {
                                    widget.exploreModel.isFav =
                                        !widget.exploreModel.isFav;
                                    setState(() {});
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Icon(
                                      widget.exploreModel.isFav
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color: widget.exploreModel.isFav
                                          ? Colors.red[900]
                                          : Colors.white,
                                    ),
                                  )),
                            ),
                          ],
                        );
                      }),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    width: widget.exploreModel.images.length * 15,
                    height: 40,
                    alignment: Alignment.center,
                    child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.exploreModel.images.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(
                              radius: indexPage == index ? 5 : 3,
                              backgroundColor: indexPage == index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.exploreModel.fullName,
                    style: const TextStyle(
                      fontFamily: 'ManropeBold',
                      fontSize: 15,
                    ),
                  ),
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
                  )
                ],
              ),
            ),
            Text(
              widget.exploreModel.distance,
              style: const TextStyle(
                fontFamily: 'ManropeRegular',
                color: Colors.black87,
                fontSize: 13,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                widget.exploreModel.availableTime,
                style: const TextStyle(
                  fontFamily: 'ManropeRegular',
                  color: Colors.black87,
                  fontSize: 13,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: widget.exploreModel.price,
                    style: const TextStyle(
                      fontFamily: 'ManropeBold',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  const TextSpan(
                    text: '  night',
                    style: TextStyle(
                      fontFamily: 'ManropeRegular',
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

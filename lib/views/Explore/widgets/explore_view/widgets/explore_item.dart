import 'package:airbnbclone/models/explore_model.dart';
import 'package:airbnbclone/views/Explore/widgets/explore_view/widgets/slide_indicator.dart';
import 'package:airbnbclone/views/ExploreDetails/page/explore_details.dart';
import 'package:flutter/material.dart';

/// Explore page
class ExploreItem extends StatefulWidget {
  ///constructor
  const ExploreItem({
    super.key,
    required this.exploreModel,
  });

  /// Explore Mock data
  final ExploreModel exploreModel;

  @override
  State<ExploreItem> createState() => _ExploreItemState();
}

class _ExploreItemState extends State<ExploreItem> {
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => ExploreDetails(
                exploreModel: widget.exploreModel,
              ),
            ),
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
                      setState(() {
                        indexPage = v;
                      });
                    },
                    itemCount: widget.exploreModel.images.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                  widget.exploreModel.images[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  widget.exploreModel.isFav =
                                      !widget.exploreModel.isFav;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Icon(
                                  widget.exploreModel.isFav
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: widget.exploreModel.isFav
                                      ? const Color(0xFFB71C1C)
                                      : const Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SlideIndicator(
                    imageLength: widget.exploreModel.images.length,
                    pageIndex: indexPage,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4, top: 8),
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
                ],
              ),
            ),
            Text(
              widget.exploreModel.distance,
              style: const TextStyle(
                fontFamily: 'ManropeRegular',
                color: Color(0xDD000000),
                fontSize: 13,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                widget.exploreModel.availableTime,
                style: const TextStyle(
                  fontFamily: 'ManropeRegular',
                  color: Color(0xDD000000),
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
                      color: Color(0xFF000000),
                      fontSize: 14,
                    ),
                  ),
                  const TextSpan(
                    text: '  night',
                    style: TextStyle(
                      fontFamily: 'ManropeRegular',
                      color: Color(0xDD000000),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

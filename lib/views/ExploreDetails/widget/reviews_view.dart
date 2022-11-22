import 'package:airbnbclone/models/reviews.dart';
import 'package:flutter/material.dart';

/// Reviews View widget
class ReviewsView extends StatelessWidget {
  /// Reviews View widget constructor
  const ReviewsView({
    super.key,
    required this.reviewsView,
  });

  /// Item review view
  final List<Reviews> reviewsView;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.width / 2.5,
      child: ListView.builder(
        itemCount: reviewsView.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 20),
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0x61000000)),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        reviewsView[index].image,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          reviewsView[index].name,
                          style: const TextStyle(
                            fontFamily: 'ManropeRegular',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          reviewsView[index].time,
                          style: const TextStyle(
                            fontFamily: 'ManropeRegular',
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  reviewsView[index].description,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
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
    );
  }
}

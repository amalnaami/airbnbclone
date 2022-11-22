import 'package:airbnbclone/models/offers.dart';
import 'package:flutter/material.dart';

/// Item Offers widget
class ItemOffers extends StatelessWidget {
  /// Item Offers widget constructor
  const ItemOffers({
    super.key,
    required this.offers,
  });

  /// Item offers
  final List<Offers> offers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: offers.length * 30,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: offers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  offers[index].name,
                  style: const TextStyle(
                    fontFamily: 'ManropeRegular',
                    fontSize: 15,
                  ),
                ),
                Icon(offers[index].image, size: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:airbnbclone/core/demo_list/demo_list.dart';
import 'package:airbnbclone/views/Explore/widgets/explore_view/widgets/explore_item.dart';
import 'package:flutter/material.dart';

/// Explore Items widget
class ExploreItems extends StatelessWidget {
  /// Explore Items widget constructor
  const ExploreItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.builder(
        itemCount: exploreDummyData.length,
        itemBuilder: (context, index) {
          return ExploreItem(exploreModel: exploreDummyData[index]);
        },
      ),
    );
  }
}

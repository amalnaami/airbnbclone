import 'package:airbnbclone/views/Explore/widgets/text_tabs.dart';
import 'package:flutter/material.dart';

/// Explore Tabs
class ExploreTabs extends StatelessWidget {
  ///constructor
  const ExploreTabs({
    super.key,
    required this.tabController,
  });

  /// TabController to handle scroll
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 60,
          child: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: const Color(0xFF000000),
            unselectedLabelStyle: const TextStyle(color: Color(0xFF000000)),
            unselectedLabelColor: const Color(0x73000000),
            indicatorColor: const Color(0xFF000000),
            controller: tabController,
            tabs: const <Widget>[
              TextTabs(text: 'Surfing', iconData: Icons.surfing),
              TextTabs(text: 'Bed & breakfast', iconData: Icons.bedroom_baby),
              TextTabs(text: 'Notional parks', iconData: Icons.local_parking),
              TextTabs(text: 'OBeach', iconData: Icons.beach_access),
            ],
          ),
        ),
        const Divider(height: 1.5, thickness: 1.5, color: Color(0x1F000000)),
      ],
    );
  }
}

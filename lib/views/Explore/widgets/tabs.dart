import 'package:flutter/material.dart';

class ExploreTabs extends StatelessWidget {
  final TabController tabController;

  const ExploreTabs({
    Key? key,
    required this.tabController,
  }) : super(key: key);

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
            indicatorWeight: 2,
            unselectedLabelColor: const Color(0x73000000),
            indicatorColor: const Color(0xFF000000),
            controller: tabController,
            tabs: <Widget>[
              textTabs("Surfing", Icons.surfing),
              textTabs("Bed & breakfast", Icons.bedroom_baby),
              textTabs("Notional parks", Icons.local_parking_sharp),
              textTabs("OBeach", Icons.beach_access),
            ],
          ),
        ),
        const Divider(height: 1.5, thickness: 1.5, color: Color(0x1F000000)),
      ],
    );
  }

  Widget textTabs(String text, IconData iconData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 20),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(fontFamily: 'ManropeMedium', fontSize: 12),
        ),
      ],
    );
  }
}

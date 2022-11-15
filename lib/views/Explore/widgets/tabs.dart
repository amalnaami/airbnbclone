import 'package:flutter/material.dart';

class ExploreTabs extends StatelessWidget {
  ExploreTabs({Key? key, required this.tabController}) : super(key: key);
  TabController tabController;

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
            labelColor: Colors.black,
            unselectedLabelStyle: const TextStyle(
              color: Colors.black,
            ),
            indicatorWeight: 2,
            unselectedLabelColor: Colors.black45,
            indicatorColor: Colors.black,
            controller: tabController,
            tabs: <Widget>[
              textTabs("Surfing", Icons.surfing),
              textTabs("Bed & breakfast", Icons.bedroom_baby),
              textTabs("Notional parks", Icons.local_parking_sharp),
              textTabs("OBeach", Icons.beach_access),
            ],
          ),
        ),
        const Divider(
          height: 1.5,
          thickness: 1.5,
          color: Colors.black12,
        )
      ],
    );
  }

  Widget textTabs(String text, IconData iconData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 20,
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'ManropeMedium',
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

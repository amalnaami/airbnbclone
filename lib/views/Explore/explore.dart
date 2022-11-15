import 'package:airbnbclone/demo_list/demo_list.dart';
import 'package:airbnbclone/views/Explore/widgets/explore_item.dart';
import 'package:airbnbclone/views/Explore/widgets/tabs.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                searchField(),
                exploreTabs(),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      typeOfExploreItem(),
                      Container(color: Colors.pink),
                      Container(color: Colors.red),
                      Container(color: Colors.orange),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.map,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Map',
                    style: TextStyle(
                        fontFamily: 'ManropeBold',
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchField() {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      decoration: decoration(),
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          label: labelText(),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 12),
          prefixIcon: const Icon(
            Icons.search_sharp,
            size: 18,
            color: Colors.black,
          ),
          suffixIcon: Container(
            decoration: decoration(),
            width: 30,
            height: 30,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: const Icon(
              Icons.filter_center_focus_sharp,
              size: 15,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget labelText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Where to?',
          style: TextStyle(
            fontFamily: 'ManropeRegular',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        Text(
          'Anywhere, Any time, Add guests',
          style: TextStyle(
            fontFamily: 'ManropeRegular',
            color: Colors.black45,
            fontSize: 12,
          ),
        )
      ],
    );
  }

  Decoration? decoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(40),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[300]!,
          blurRadius: 10,
          spreadRadius: 2,
        ),
      ],
    );
  }

  Widget exploreTabs() {
    return ExploreTabs(
      tabController: _tabController!,
    );
  }

  Widget typeOfExploreItem() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.builder(
          itemCount: exploreModel.length,
          itemBuilder: (context, index) {
            return ExploreItem(exploreModel: exploreModel[index]);
          }),
    );
  }
}

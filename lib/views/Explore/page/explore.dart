import 'package:airbnbclone/views/Explore/widgets/explore_view/explore_items.dart';
import 'package:airbnbclone/views/Explore/widgets/map_floating_button.dart';
import 'package:airbnbclone/views/Explore/widgets/search_field.dart';
import 'package:airbnbclone/views/Explore/widgets/tabs.dart';
import 'package:flutter/material.dart';

/// Explore Page
class Explore extends StatefulWidget {
  /// Explore page constructor
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                const SearchField(),
                ExploreTabs(tabController: _tabController),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      ExploreItems(),
                      ColoredBox(color: Color(0xFFE91E63)),
                      ColoredBox(color: Color(0xFFF44336)),
                      ColoredBox(color: Color(0xFFFF9800)),
                    ],
                  ),
                ),
              ],
            ),
            const MapFloatingButton(),
          ],
        ),
      ),
    );
  }
}

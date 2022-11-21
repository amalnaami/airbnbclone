import 'package:airbnbclone/views/Explore/page/explore.dart';
import 'package:airbnbclone/views/Profile/page/profile.dart';
import 'package:flutter/material.dart';

class AllViews extends StatefulWidget {
  const AllViews({Key? key}) : super(key: key);

  @override
  State<AllViews> createState() => _AllViewsState();
}

class _AllViewsState extends State<AllViews> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: _pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItems,
        currentIndex: _selectedIndex,
        iconSize: 20,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 0.0,
        selectedItemColor: Colors.red[900],
        selectedLabelStyle: TextStyle(
          fontFamily: 'ManropeBold',
          fontSize: 12,
          color: Colors.red[900],
          fontWeight: FontWeight.bold,
        ),
        unselectedItemColor: Colors.black87,
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'ManropeBold',
          fontSize: 11,
          color: Colors.black87,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  static const List<Widget> _pages = [
    Explore(),
    Icon(Icons.camera, size: 150),
    Icon(Icons.chat, size: 150),
    Icon(Icons.chat, size: 150),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  static const bottomNavBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Explore',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border_outlined),
      label: 'Wishlists',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.travel_explore),
      label: 'Trips',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat_bubble_outline),
      label: 'Inbox',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_pin),
      label: 'Profile',
    ),
  ];
}

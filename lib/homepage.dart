import 'package:flutter/material.dart';
import 'package:instragram_ui/pages/account.dart';
import 'package:instragram_ui/pages/home.dart';
import 'package:instragram_ui/pages/reels.dart';
import 'package:instragram_ui/pages/search.dart';
import 'package:instragram_ui/pages/shop.dart';

class HomePageIG extends StatefulWidget {
  const HomePageIG({Key? key}) : super(key: key);

  @override
  State<HomePageIG> createState() => _HomePageIGState();
}

class _HomePageIGState extends State<HomePageIG> {
  int _selectedIndex = 0; //NAV P2
  void _navigateBottomNavBar(int index) {
    //Nav 4
    setState(() {
      _selectedIndex = index;
    });
  }

//-------------------Different pages to navigate to---------------
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, //Nav P1
          onTap: _navigateBottomNavBar, //Nav P3
          type: BottomNavigationBarType.fixed, //3+ Items
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          ],
        ));
  }
}

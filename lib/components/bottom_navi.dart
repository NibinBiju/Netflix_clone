import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/colors.dart';
import 'package:netflix_clone/view/coming_soon/coming_soon_page.dart';
import 'package:netflix_clone/view/home.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({
    super.key,
  });

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  // int changeColor
  int changeNavi = 0;

  List myPages = [
    const Home(profileName: 'nibin'),
    const Center(
      child: Text(
        'search',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    ComingSoon(),
    const Center(
      child: Text(
        'download',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    const Center(
      child: Text(
        'more',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: myPages[changeNavi],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            changeNavi = value;
          });
        },
        currentIndex: changeNavi,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 148, 145, 145),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined), label: 'Coming soon'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Download'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'More'),
        ],
      ),
    );
  }
}

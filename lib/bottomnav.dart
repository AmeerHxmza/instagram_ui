import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'reels.dart';
import 'post.dart';
import 'profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  List<Widget> widgetList = [
    HomePage(),
    SearchPage(),
    PostPage(),
    ReelsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 35,
              ),
              label: '',
              activeIcon: Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 35,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
                color: Colors.black,
                size: 35,
              ),
              label: '',
              activeIcon: Image.asset("images/filledSearch.webp",
                  width: 25, height: 25, fit: BoxFit.cover),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("images/postIcon.webp",
                  width: 35, height: 35, fit: BoxFit.cover),
              label: '',
              activeIcon: Image.asset("images/postIcon.webp",
                  width: 35, height: 35, fit: BoxFit.cover),
            ),
            BottomNavigationBarItem(
              icon: Image.asset("images/reels.png",
                  width: 35, height: 35, fit: BoxFit.cover),
              label: '',
              activeIcon: Image.asset(
                "images/reels.png",
                width: 35,
                height: 35,
                fit: BoxFit.cover,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("images/profile.jpeg",
                      width: 35, height: 35, fit: BoxFit.cover)),
              label: '',
              activeIcon: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("images/profile.jpeg",
                      width: 35, height: 35, fit: BoxFit.cover)),
            ),
          ]),
      body: Center(
        child: widgetList[selectedIndex],
      ),
    );
  }
}

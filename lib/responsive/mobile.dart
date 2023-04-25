import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:instagram/screens/add_post.dart';
import 'package:instagram/screens/favorite.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/profile.dart';
import 'package:instagram/screens/search.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  final PageController _pageController = PageController();
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Color.fromARGB(185, 14, 13, 13),
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            currentpage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  color: currentpage == 0
                      ? Color.fromARGB(255, 255, 255, 255)
                      : Color.fromARGB(255, 76, 75, 75)),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: currentpage == 1
                    ? Color.fromARGB(255, 255, 255, 255)
                    : Color.fromARGB(255, 76, 75, 75),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: currentpage == 2
                    ? Color.fromARGB(255, 255, 255, 255)
                    : Color.fromARGB(255, 76, 75, 75),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: ""),
        ],
      ),
      body: PageView(
        onPageChanged: (index) {
          print("--------- $index");
        },
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          Search(),
          Add_post(),
          Favorite(),
          Profile(),
        ],
      ),
    );
  }
}

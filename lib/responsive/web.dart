import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/screens/add_post.dart';
import 'package:instagram/screens/favorite.dart';
import 'package:instagram/screens/home.dart';
import 'package:instagram/screens/profile.dart';
import 'package:instagram/screens/search.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: widthScreen > 600
          ? null
          : AppBar(
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 76, 75, 75),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 76, 75, 75),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_a_photo,
                    color: Color.fromARGB(255, 76, 75, 75),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 76, 75, 75),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 76, 75, 75),
                  ),
                  onPressed: () {},
                ),
              ],
              backgroundColor: Colors.black,
            ),
      body: PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        // controller: _pageController,
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

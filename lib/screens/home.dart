import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
        backgroundColor: Colors.black,
        title: SvgPicture.asset(
          "assets/img/instagram.svg",
          color: Colors.white,
          height: 34,
        ),
      ),
    );
  }
}

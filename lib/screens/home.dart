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
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 26,
                    backgroundImage:
                        AssetImage("assets/photo_2023-03-24_21-38-03.jpg"),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("Abdo Mohamed"),
                Spacer(
                  flex: 1,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            )
          ],
        ),
      ),
    );
  }
}

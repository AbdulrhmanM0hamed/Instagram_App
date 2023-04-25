import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: widthScreen > 600
          ? null
          : AppBar(
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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 60, horizontal: 50),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.3a9f0210ff7d1e83039ff237c81bacae?rik=asArcL6qvWfZfA&riu=http%3a%2f%2fs1.picswalls.com%2fwallpapers%2f2016%2f03%2f29%2fbeautiful-nature-high-definition_042323787_304.jpg&ehk=8tO7UxFL%2bC03x6vfc2O9EhdUCe4fl6tC7UGUdlnpdX4%3d&risl=&pid=ImgRaw&r=0"))),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_bubble_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                  ),
                ],
              ),
              Text("10 likes"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Abdo Mohamed",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "View all comment 100",
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

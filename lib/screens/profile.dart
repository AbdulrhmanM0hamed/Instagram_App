import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abdo Mohamed"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 22),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(125, 78, 91, 110),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

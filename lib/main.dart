import 'package:flutter/material.dart';
import 'package:instagram/responsive/mobile.dart';
import 'package:instagram/responsive/responsive.dart';
import 'package:instagram/responsive/web.dart';

void main() {
  runApp(const Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: Responsive(
          mymobilescreen: MobileScreen(),
          mywebscreen: WebScreen(),
        ));
  }
}

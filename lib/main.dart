import 'package:flutter/material.dart';

void main() {
  runApp(const Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mobile screen "),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

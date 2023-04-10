import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key,required this.mymobilescreen,required this.mywebscreen});
  final mymobilescreen;
  final mywebscreen ;
  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext, BoxConstraints) {
      if (BoxConstraints.maxWidth > 600 ) {
         return 

      } else {
        return
      }
    });
  }
}

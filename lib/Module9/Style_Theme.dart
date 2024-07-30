
// jyare app ma diffrent app screen ma use text ni textstyle similar hoy che tyare varamvar textstyle apvane badle apde main.dart ma
// ma theme: ThemeData() ma text theme api sakai
import 'package:flutter/material.dart';
class Style_Theme extends StatefulWidget {

  @override
  State<Style_Theme> createState() => _Style_ThemeState();
}

class _Style_ThemeState extends State<Style_Theme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello"),
          Text("I am Prit"),
          Text("Good morning"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("home"),
      ),
    );
  }
}
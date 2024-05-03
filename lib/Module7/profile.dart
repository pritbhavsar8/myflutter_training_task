import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("profile"),
      ),
    );
  }
}
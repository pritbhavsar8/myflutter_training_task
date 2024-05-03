import 'package:flutter/material.dart';

class ImageWidgets extends StatefulWidget {
  

  @override
  State<ImageWidgets> createState() => _ImageWidgetsState();
}

class _ImageWidgetsState extends State<ImageWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widgets"),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage("assets/img/india map.png"),
          width: 300.0,
          height: 300.0,
          fit: BoxFit.cover,
          // image: NetworkImage("https://images.news18.com/ibnlive/uploads/2021/08/modi-2-16289647184x3.jpg?impolicy=website&width=640&height=480"),
        ),
      ),
    );
  }
}
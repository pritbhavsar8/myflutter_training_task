import 'package:flutter/material.dart';

class Image2Widget extends StatefulWidget 
{
  @override
  State<Image2Widget> createState() => _Image2WidgetState();
}

class _Image2WidgetState extends State<Image2Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image2 Widgets"),
        centerTitle: true,
      ),
      body:Center(
            child: Image(
            image: AssetImage("assets/img/IMG_20220206_100102.jpg"),
            width: 300.0,
            height: 300.0,
            fit: BoxFit.cover,
            color: Colors.red,
            colorBlendMode:BlendMode.multiply ,
          ),
        ),
      // body: Center(
      //   child: Stack(
      //     children: [
      //       Center(
      //        child: CircularProgressIndicator()
      //       ),
      //     Center(
      //       child: Image(
      //         image: AssetImage("assets/img/IMG_20220206_100102.jpg"),
      //         width: 300.0,
      //         height: 300.0,
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     ], 
      //   ),
      // ),
    );
  }
}
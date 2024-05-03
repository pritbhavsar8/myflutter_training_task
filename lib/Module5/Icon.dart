import 'package:flutter/material.dart';

class IconWidgets extends StatefulWidget {
  

  @override
  State<IconWidgets> createState() => _IconWidgetsState();
}

class _IconWidgetsState extends State<IconWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.settings),
        ),
        // leading: Icon(Icons.settings),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star),
            Text("Favorite"),
          ]
        ),
      ),
      // body: Center(
      //   child: Icon(Icons.home,size: 48.0,color: Colors.blue,),
      // ),
    );
  }
}
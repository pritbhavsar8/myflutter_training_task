import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Card(
            child: Column(
              children: [
                Icon(Icons.account_circle),
                Text("username"),
                Text("7566771967")
              ],
            )
          ),
        ],
      ),
      // body: Center(
      //   child: Card(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(5.0)
      //     ),
      //     elevation: 5.0,
      //     color: Colors.lightBlueAccent,
      //     child: Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Text("Hello World!"),
      //     ),
      //   ),
      // ),
    );
  }
}
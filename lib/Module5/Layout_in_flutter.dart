import 'package:flutter/material.dart';

class Layout extends StatefulWidget {

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.account_circle),
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.amber.shade100,
                  child: Text("username")
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.red.shade100,
              child: Text("about:  simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."))
          ],
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("text1"),
      //       Icon(Icons.star),
      //       Text("text2"),
      //     ]
      //   ),
      // ),

    );
  }
}
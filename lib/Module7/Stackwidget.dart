import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class stack  extends StatefulWidget {
 

  @override
  State<stack> createState() => _stackState();
}

class _stackState extends State<stack> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5.0)
              ),
            ),
            Positioned(
              left: 170.0,
              top: 30.0,
              child: Text("My App")
            ),
            Positioned(
                right: 40.0,
                top: 30.0,
                child: Icon(Icons.settings)
            ),
            Positioned(
              right: 70.0,
                top: 30.0,
              child: Visibility(
                visible: visible,
                child: CircularProgressIndicator(
                color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Row_column extends StatefulWidget {
  @override
  State<Row_column> createState() => _Row_columnState();
}
class _Row_columnState extends State<Row_column> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Text 1"),
            Icon(Icons.star),
            Text("Text 2"),
          ],
        ),
      ),
    );
  }
}
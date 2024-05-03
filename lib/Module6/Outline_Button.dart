import 'package:flutter/material.dart';

class Outline extends StatefulWidget {
  

  @override
  State<Outline> createState() => _OutlineState();
}

class _OutlineState extends State<Outline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          onPressed: (){
            print('Button pressed!');
          }, 
          child: Row(
            children: [
              Icon(Icons.add),
              Text("Add Item")
            ],
          )//Text("Click Me"),
        )
      ),
    );
  }
}
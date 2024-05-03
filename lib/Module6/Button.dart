import 'package:flutter/material.dart';

class Button extends StatefulWidget {

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       IconButton(
      //        onPressed: (){
      //          print("Add Item");
      //         },
      //         icon: Icon(Icons.add),
      //       ),
      //       Text("Add Items")
      //     ], 
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: (){
      //       print("Button pressed!");
      //     },
      //     style: ElevatedButton.styleFrom(
      //       foregroundColor: Colors.red
      //     ),
      //     child: Text("click me")
      //   ),
      // ),
       body: Center(
        child: ElevatedButton(
          onPressed:null,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red
          ),
          child: Text("click me")
        ),
      ),
    );
  }
}
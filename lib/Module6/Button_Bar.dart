import 'package:flutter/material.dart';

class Buttonbar extends StatefulWidget {
  
  @override
  State<Buttonbar> createState() => _ButtonbarState();
}

class _ButtonbarState extends State<Buttonbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: ButtonBar(
            // alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                print("Button 1 pressed!");
              }, child: Text("Button 1")),
              OutlinedButton(onPressed: (){
                print("Button 2 pressed!");
              }, child:Text("Button 2"))
              // TextButton(onPressed: (){
              //   print("Button 2 pressed!");
              // }, child: Text("Button 2")),
              
            ],
          ),
        ),
      ),
    );
  }
}
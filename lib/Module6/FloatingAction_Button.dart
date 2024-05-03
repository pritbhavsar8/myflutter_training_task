import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module6/Button.dart';

class FloatingAction extends StatefulWidget {

  @override
  State<FloatingAction> createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Button(),)
          );
          // print("FAB pressed!");
        },
        label: Text("Add"),
        backgroundColor: Colors.blue,
        icon: Icon(Icons.add),
      ),
    );
  }
}
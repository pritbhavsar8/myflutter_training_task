import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool isOn = true; 
  var bg = Colors.white;
   List<String> switchLabels = ['Switch 1', 'Switch 2', 'Switch 3'];
  List<bool> switchValues = [false, true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:bg ,
      body: ListView.builder(
        itemCount:switchLabels.length ,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(switchLabels[index]),
            trailing: Switch(
              value: switchValues[index],
              onChanged: (value) {
                setState(() {
                  switchValues[index] = value;
                });
              },
            ),
          );
        },
      )
      // body: Switch(
      //   value:isOn , 
      //   onChanged: (value) {
      //     setState(() {
      //       isOn = value;
      //     });
      //   },
      //   activeColor: Colors.green,
      //   inactiveTrackColor: Colors.red,
      //   dragStartBehavior: DragStartBehavior.start,
        
      // ),
    );
  }
}
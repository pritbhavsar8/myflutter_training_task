import 'package:flutter/material.dart';

class DropDown_Button extends StatefulWidget {
  

  @override
  State<DropDown_Button> createState() => _DropDown_ButtonState();
}

class _DropDown_ButtonState extends State<DropDown_Button> {
  var selected = "item1";
  List<String> items = ["item1","item2","item3","item4","item5"];
  bool isEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:isEnable? DropdownButton(

          value:selected,
          items:items.map((valueitem){
            return DropdownMenuItem(
              value: valueitem,
              child: Text(valueitem),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selected = value!;
              print(value);
            });
          },
          hint: Text("Select item"),
          dropdownColor: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(10.0),
          // icon: Icon(Icons.access_alarm),
        ): Text("Disabled"),
      ),
    );
  }
}
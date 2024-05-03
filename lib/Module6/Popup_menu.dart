import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget 
{
  
  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> 
{
  var selected = "Option 1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selected option: $selected"),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("Option 1"),value: "Option 1",
                  ),
                   PopupMenuItem(
                    child: Text("Option 2"),value: "Option 2" ,
                  ),
                   PopupMenuItem(
                    child: Text("Option 3"),value: "Option 3",
                  ),
                ];
              },
              onSelected: (value) {
                setState(() {
                  selected = value;
                  print(value);
                });
              },
              // enabled: false,
              offset: Offset(0, 50),
              color: Colors.amber.shade50,
              elevation: 5.0,
              padding: EdgeInsets.all(10.0),
            ),
          ],
        ) ,
      ),
    );
  }
}
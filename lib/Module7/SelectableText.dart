import 'package:flutter/material.dart';

class selectText extends StatefulWidget {
  const selectText({super.key});

  @override
  State<selectText> createState() => _selectTextState();
}

class _selectTextState extends State<selectText> {
  
  var text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText(
          text,textAlign: TextAlign.center,style: TextStyle(
            color: Colors.brown,
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
          onSelectionChanged: (selection, cause) {
            var selectedtext= text.substring(selection.start,selection.end);
            print("selected: $selectedtext");
          },
          
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class checkButton extends StatefulWidget {
  const checkButton({super.key});

  @override
  State<checkButton> createState() => _checkButtonState();
}

class _checkButtonState extends State<checkButton> {
  bool cb = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Checkbox(
            value: cb, 
            onChanged: (val){
              setState(() {
                cb = val!;
              });
            },
            checkColor: Colors.green,
            activeColor: Colors.yellow,
            
          ),
        ],
      ),
    );
  }
}
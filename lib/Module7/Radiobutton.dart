import 'package:flutter/material.dart';

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {
  var gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Text("Male"),
          Radio(
            value: "male",
             groupValue: gender,
              onChanged: (value) {
               setState(() {
                  gender = value!;
               });
              },
              activeColor: Colors.green.shade200,
          ),

          Text("Female"),
          Radio(
            value: "female",
             groupValue: gender,
              onChanged: (value) {
               setState(() {
                  gender = value!;
               });
              },
          )
        ],
      ),
    );
  }
}
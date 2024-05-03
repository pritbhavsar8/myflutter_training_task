import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              TextField(
                controller: _name,
                keyboardType: TextInputType.text ,
                decoration: InputDecoration(
                  hintText: "enter your name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                ),
                onChanged: (value) {
                  var name = _name.text.toString();
                  setState(() {
                    name = value;
                  });
                  print(name);
                },
              ),
            SizedBox(height: 20.0,),
            TextField(
              controller: _password,
              obscureText: true,
                keyboardType: TextInputType.number ,
                decoration: InputDecoration(
                  hintText: "enter password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(11.0),
                  ),       
                ),
                 onChanged: (value) {
                  var password = _password.text.toString();
                  setState(() {
                    password = value;
                  });
                  print(password);
                },
              ),
          ],
        ),
      ) ,
    );
  }
}
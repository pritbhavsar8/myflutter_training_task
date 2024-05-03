import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300.0,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                  hintText: "Please enter Email",
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
            ),
             SizedBox(height: 20.0,),
             SizedBox(
              width: 300.0,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                  hintText: "Please enter Password",
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              width: 300.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: BeveledRectangleBorder(),               
                ),
                onPressed: (){},
                child: Text("Sign Up")),
            ),
             SizedBox(height: 10.0,),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Have an account?",
                      style: TextStyle(
                          color: Color(0xff0EBE7F),
                          fontWeight: FontWeight.w400,
                          fontSize: 14.0,
                          fontFamily: "Rubik"
                      )
                    ),
                    TextSpan(
                        text: " Log in",
                        style: TextStyle(
                            color: Color(0xff0EBE7F),
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            fontFamily: "Rubik"
                        ),
                        recognizer:  TapGestureRecognizer()..onTap = (){
                            Navigator.of(context).push(
                           MaterialPageRoute(builder: (context) =>LoginScreen() ,)
                          );
                        },
                    )
                  ]
                ))
          ],
        ),
      ),
    );
  }
}
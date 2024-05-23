import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/Auth/SignIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   var formkey = GlobalKey<FormState>();
   TextEditingController _email = TextEditingController();
   TextEditingController _password = TextEditingController();
   FirebaseAuth auth = FirebaseAuth.instance;
   String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please Enter email address";
                  }
                  else if(!RegExp(emailPattern).hasMatch(value))
                  {
                    return "Please Enter valid email address";
                  }
                  return null;
                  },
                ),
              ),
               SizedBox(height: 20.0,),
               SizedBox(
                width: 300.0,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    hintText: "Please enter Password",
                    filled: true,
                    fillColor: Colors.white
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "please enter password";
                    }
                    else if(value.length<6)
                    {
                      return "enter password minimum 6 or more character";
                    }
                  },
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: 300.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.0)
                    ),               
                  ),
                  onPressed: (){
                    if(formkey.currentState!.validate())
                    {                
                      var email = _email.text.toString();
                      var password = _password.text.toString();
                      auth.createUserWithEmailAndPassword(
                        email:email ,
                        password: password
                      ).then((value) async{
                        await ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("signUp Sucessfully"),
                            backgroundColor: Colors.green,
                            duration: Duration(seconds: 2),
                          )
                        );
                        setState(() {
                        _email.text = "";
                        _password.text= "";
                        });
                        
                      }).onError((error, stackTrace){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(error.toString()),
                            backgroundColor: Colors.red,
                            duration: Duration(seconds: 3),

                          )
                        );

                      });
                    }
                  },
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
                          text: " Sign in",
                          style: TextStyle(
                              color: Color(0xff0EBE7F),
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              fontFamily: "Rubik"
                          ),
                          recognizer:  TapGestureRecognizer()..onTap = (){
                             Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) =>SignIn(),)
                            );
                          },
                      )
                    ]
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
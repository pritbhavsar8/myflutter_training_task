import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_training_task/Module8/Auth/HomeScreen.dart';
import 'package:myflutter_training_task/Module8/Auth/ResetPassword.dart';
import 'package:myflutter_training_task/Module8/Auth/SignUp.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var formkey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
   FirebaseAuth auth = FirebaseAuth.instance;
   bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn"),
        centerTitle: true,
      ),
      body:  Form(
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
                       borderSide: BorderSide(
                        color: Colors.red.shade50
                      ),
                    ),
                    hintText: "Please enter Email",
                    filled: true,
                    fillColor:  Colors.red.shade50
                  ),
                  validator: (value) {
                   if(value!.isEmpty)
                    {
                      return "Please Enter email address";
                    }
                    else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value))
        
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
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                      borderSide: BorderSide(
                        color: Colors.red.shade50
                      ),
                    ),
                    hintText: "Please enter Password",
                    filled: true,
                    fillColor: Colors.red.shade50
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
              SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ResetPass(),)
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child: Text("Forgot Password",style: TextStyle(color: Colors.red),),
                )
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
                        auth.signInWithEmailAndPassword(
                          email: email,
                          password: password
                        ).then((value) async{
                          var useremail  = value.user!.email.toString();
                          var userid = value.user!.uid.toString();
                          SharedPreferences preferences = await SharedPreferences.getInstance();
                          preferences.setString("email",useremail);
                          preferences.setString("id",userid);
                          setState(() {
                            _email.text= "";
                            _password.text = "";
                          });
                          if(value==value)
                          {
                            await ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Login Sucessfully"),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 2),
                            )
                           );
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => homescreen(),)
                            );
                          }                         
                        }).onError((error, stackTrace)async{
                         await ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(error.toString()),
                              backgroundColor: Colors.red,
                              duration: Duration(seconds: 3),
                            )
                          );
                           Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SignUp(),)
                            );
                        });
                       
                      }
                  },
                  child: Text("Sign In")), 
              ),                    
            ],
          ),
        ),
      ),
    );
  }
}
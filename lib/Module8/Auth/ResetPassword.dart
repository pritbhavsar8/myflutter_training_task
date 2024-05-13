import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  var formkey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
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
              Container(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: ()async {
                   if(formkey.currentState!.validate()){
                     var email = _email.text.toString();
                    await auth.sendPasswordResetEmail(email: email).then((value){
                       ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("we have sent you email to recover password please check email"),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 3),
                            )
                          );
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
                  style:  ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11.0)
                      ),
                    ),     
                  child: Text("Reset password")
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
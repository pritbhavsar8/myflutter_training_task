import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myflutter_training_task/Module8/Auth/otpScreen.dart';


class phoneAuth extends StatefulWidget {
  const phoneAuth({super.key});

  @override
  State<phoneAuth> createState() => _phoneAuthState();
}

class _phoneAuthState extends State<phoneAuth> {
    TextEditingController _phoneAuth = TextEditingController();
    FirebaseAuth auth = FirebaseAuth.instance;
    var formkey = GlobalKey<FormState>();
            Receive_otp() async{
               await auth.verifyPhoneNumber(
                  phoneNumber: "+91" + _phoneAuth.text,
                  verificationCompleted: (PhoneAuthCredential credential){},
                  verificationFailed: (FirebaseAuthException error){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(error.toString()),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                      )
                    );
                  },
                  codeSent: (String verificationId, int? Retoken){   // int? Retoken use when otp expire then again resend otp mate int? Retoken use thai che
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpScreen(
                        verificationid: verificationId,           
                      ),),
                    );
                  },
                  codeAutoRetrievalTimeout: (e){   //codeAutoRetrievalTimeout fun when user na phone par moklelo otp expire thai jai pachi su funtinality karvi tena mate use thase
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.toString()),
                        backgroundColor: Colors.red,
                        duration: Duration(seconds: 3),
                      )
                    );
                  }
                );
            }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 300.0,
                child: TextFormField(
                  controller: _phoneAuth,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0)              
                    ),
                    hintText: "Enter your Phone number",
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.call)
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "please enter your phone number";
                    }
                    else if(value.length!=10){
                       return "please enter valid phone number";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: (){
                if(formkey.currentState!.validate())
                {
                 Receive_otp();
                }
              }, 
              child: Text('Receive OTP')
            )
          ],
        ),
      ),
    );
  }
}
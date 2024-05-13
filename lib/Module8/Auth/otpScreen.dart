import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myflutter_training_task/Module8/Auth/HomeScreen.dart';
import 'package:pinput/pinput.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpScreen extends StatefulWidget {
  var verificationid = "";
   OtpScreen({required this.verificationid});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _otp = TextEditingController();
   FirebaseAuth auth = FirebaseAuth.instance;
   var code = "";
   
   varify() async{
     PhoneAuthCredential credential = PhoneAuthProvider.credential(
                 verificationId: widget.verificationid,
                 smsCode: _otp.text.toString(),
                );
                try {               
                 await auth.signInWithCredential(credential).then((value) async{
                   var userPhone = value.user!.phoneNumber.toString();
                   SharedPreferences preferences = await SharedPreferences.getInstance();
                   preferences.setString("phoneNo",userPhone);
                   Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => homescreen(),)
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
                  // print('Manual verification successful');
                }on FirebaseAuthException catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(e.toString()),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 3),
                    )
                  );
                } catch (e){
                   ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(e.toString()),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 3),
                    )
                  );
                }

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                length: 6,
                onChanged: (value) {
                  setState(() {
                    code = value;
                  });
                },           
              ),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(
              onPressed: () async{
                {
                 varify();
                } 
              }, 
              child: Text('Varify')
            )
          ],
        ),
      ),
    );
  }
}
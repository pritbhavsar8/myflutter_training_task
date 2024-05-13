import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
   FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: IconButton(
          onPressed: () async
          {
            final GoogleSignIn googleSignIn = GoogleSignIn();
            final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
            if (googleSignInAccount != null)
            {
              final GoogleSignInAuthentication googleSignInAuthentication =
              await googleSignInAccount.authentication;
              final AuthCredential authCredential = GoogleAuthProvider.credential(
                  idToken: googleSignInAuthentication.idToken,
                  accessToken: googleSignInAuthentication.accessToken);

              // Getting users credential
              UserCredential result = await auth.signInWithCredential(authCredential);
              User user = result.user!;

              var name = user.displayName.toString();
              var email = user.email.toString();
              var photo = user.photoURL.toString();
              var googleid = user.uid.toString();

              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setBool("islogin", true);
              prefs.setString("name", name);
              prefs.setString("email", email);
              prefs.setString("photo", photo);
              prefs.setString("googleid", googleid);
            }
          },
          icon: Icon(Icons.login_outlined,size: 80.0,)
        ),
      ),
    );
  }
}
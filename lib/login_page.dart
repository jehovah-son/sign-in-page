// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:practice/google_button.dart';
import 'package:practice/my_button.dart';
import 'package:practice/services/auth_services.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailnamecontroler = TextEditingController();

  final passwordcontroler = TextEditingController();

//signuserin method
  void signUserIn() async {
    //to show loading circle
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });
//
    if (emailnamecontroler.text.isEmpty || passwordcontroler.text.isEmpty) {
      // pop out from the loding circle
      Navigator.pop(context);
      //when press the sign in button without any input
      showErrorMessage('INPUT EMAIL & PASSWORD');
    } else {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailnamecontroler.text, password: passwordcontroler.text);
        Navigator.pop(context);
      }
      // catch error
      on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        //printing error on terminal
        print(e.code);
        if (e.code == 'invalid-credential') {
          //show error message if password or email is not correct
          showErrorMessage('INVALID-CREDENTIAL');
        } else {
          //show this error message if any other type of error occured
          showErrorMessage('unknown error occur $e');
        }
      }
    }
  }

//sign in with google
  signInWithGoogle() async {
    // begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // user cancels google sign in pop up screen
    if (gUser == null) return;

    // obtain auth details from request
    final GoogleSignInAuthentication gAuth = await gUser.authentication;

    // create a new credential  for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // final sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // Function to show error message
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey[300],
          title: Text('Error'),
          content: Text(
            message,
            style: TextStyle(color: Colors.red),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/logo.png',
                      height: 70,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // welcome back
                Text(
                  'welcome back !',
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),

                ///user name text field
                TextField(
                  controller: emailnamecontroler,
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'EMAIL...',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      fillColor: Colors.grey.shade400,
                      filled: true),
                ),

                SizedBox(
                  height: 15,
                ),
                // password text filed
                TextField(
                  controller: passwordcontroler,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'PASSWORD...',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade800)),
                      fillColor: Colors.grey.shade400,
                      filled: true),
                ),

                SizedBox(
                  height: 8,
                ),
                //forgotpassword

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[800]),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                //sign in button
                MyButton(
                  text: 'Sign in',
                  onTap: signUserIn,
                ),
                SizedBox(
                  height: 30,
                ),
                // or continue with
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.grey[600],
                    )),
                    Text(
                      'or continue with',
                      style: TextStyle(color: Colors.grey[900], fontSize: 16),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.grey[600],
                    ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //google/apple
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [GoogleButton(
                    onTap: () => AuthServices().signInWithGoogle(),
                  )],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Register now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

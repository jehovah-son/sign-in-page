import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
// sign user out method
void signUserOut(){
  FirebaseAuth.instance.signOut();
}
// 
final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  backgroundColor: Colors.lightGreenAccent,
  actions: [IconButton(onPressed: signUserOut, icon: Icon(Icons.logout_rounded))],
),

      body: Center(child: Text('logged in as:'  + user.email!),),

    );
  }
}
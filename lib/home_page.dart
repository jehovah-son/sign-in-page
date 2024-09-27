import 'package:firebase_auth/firebase_auth.dart';
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
  backgroundColor: Colors.amber,
  actions: [IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout_rounded))],
),

      body: Center(child: Text('logged in as:${user.email!}' ,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),

    );
  }
}
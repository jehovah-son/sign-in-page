// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practice/auth_page.dart';
import 'package:practice/firstpage.dart';
import 'package:practice/login_page.dart';
import 'package:practice/practice.dart';
import 'package:practice/todo.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   {
    await Firebase.initializeApp(
        options:  FirebaseOptions(
            apiKey: "AIzaSyBi9D9XiYDP2g82_wVABNqdABPelP1owDw",
            authDomain: "sign-up-app-7ff8a.firebaseapp.com",
            projectId: "sign-up-app-7ff8a",
            storageBucket: "sign-up-app-7ff8a.appspot.com",
            messagingSenderId: "49477940691",
            appId: "1:49477940691:web:5718e60fccc83d736f6b26"));
  } 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}

// things needed to create an application

// variable

// method

// ui/userinterface

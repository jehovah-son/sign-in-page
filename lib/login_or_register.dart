import 'package:flutter/material.dart';
import 'package:practice/login_page.dart';
import 'package:practice/register_page.dart';

class Loginorregister extends StatefulWidget {
  const Loginorregister({super.key});

  @override
  State<Loginorregister> createState() => _LoginorregisterState();
}

class _LoginorregisterState extends State<Loginorregister> {
// initially show login page
bool showLoginPage = true;

//toogle btw login and register page
void tooglePages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}



  @override
  Widget build(BuildContext context) {
    if (showLoginPage){
      return LoginPage(
        onTap: tooglePages,
      );
    } else{
      return RegisterPage(
        onTap:tooglePages
      );
    }
  }
}
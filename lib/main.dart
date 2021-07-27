

import 'package:flutter/material.dart';

import 'modules/login_screen.dart';

void main (){
  runApp(Login());
}
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );

  }

}
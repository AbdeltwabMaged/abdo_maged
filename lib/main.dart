import 'package:flutter/material.dart';

import 'layout/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primaryColor: Colors.deepOrangeAccent,
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(
          color: Colors.deepOrangeAccent,
      ),
      ),

      home: HomeLayout(),
    );
  }
}



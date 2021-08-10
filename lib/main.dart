import 'package:flutter/material.dart';
import 'package:messenger/Messenger_ListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // خاصة بالشريط الاحمر الموجود علي الجمب
      home: MessengerScreenListView() ,
    );
  }
}

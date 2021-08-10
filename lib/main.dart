import 'package:flutter/material.dart';

import 'modules/bmi_calculator.dart';
///////////////////////////////////////////

void main (){
runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(),
    );
  }

}

import 'package:flutter/material.dart';

Widget Defaultbutton ({
  double width = double.infinity,
  Color background = Colors.orangeAccent,
  bool isUpperCase = true,
  double radius = 10.0,
  @required Function function,
  @required String text,

}) => Container(
  width: width,
  height: 50.0,
  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    ),

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
      radius,
    ),
    color: background,
  ),
);

Widget DefaultTextFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  bool isPassword = true,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  Color color,
  Function suffixPressed,

}) => TextFormField(
    controller: controller,
    keyboardType: type,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    obscureText: isPassword,
    validator:validate,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    prefixIcon: Icon( prefix,color: color, ),
    suffixIcon: suffix != null ? IconButton(
      onPressed: suffixPressed,
        icon: Icon( suffix,color: color,)): null ,
    labelText: label,
  ),
);
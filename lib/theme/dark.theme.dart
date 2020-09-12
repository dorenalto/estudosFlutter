import 'package:flutter/material.dart';

const brightness = Brightness.light;

const primaryColor = const Color(0XFF00C569);
const lightColor = const Color(0XFFFFFFF);
const backgroundColor = const Color(0XFF5F5F5);
var accentColor = Colors.black26;

ThemeData darkTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: backgroundColor,
    textTheme: TextTheme(
      headline4: TextStyle(
        color: Colors.red,
      ),
    ),
  );
}

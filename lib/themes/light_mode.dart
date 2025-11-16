import 'package:flutter/material.dart';

extension CustomColors on ColorScheme {
  Color get green => Colors.green.shade400;
}

ThemeData lightMode = ThemeData(
  fontFamily: "VendSan",
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
  scaffoldBackgroundColor: Colors.grey.shade300
);
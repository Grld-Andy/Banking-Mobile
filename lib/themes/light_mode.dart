import 'package:flutter/material.dart';
import 'package:mobile_bank/themes/text_theme.dart';

extension CustomColors on ColorScheme {
  Color get green => Colors.green.shade400;
}

ThemeData lightMode = ThemeData(
  fontFamily: "VendSan",
  textTheme: textTheme,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade300,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
  ),
  scaffoldBackgroundColor: Colors.grey.shade100
);
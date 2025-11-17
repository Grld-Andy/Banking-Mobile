import 'package:flutter/material.dart';
import 'package:mobile_bank/themes/text_theme.dart';

ThemeData darkMode = ThemeData(
  fontFamily: "VendSan",
  textTheme: textTheme,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade500,
    secondary: const Color.fromARGB(255, 82, 82, 82),
    tertiary: const Color.fromARGB(255, 25, 25, 25),
    inversePrimary: Colors.grey.shade300,
  ),
  scaffoldBackgroundColor: Colors.grey.shade900
);
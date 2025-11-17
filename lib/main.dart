import 'package:flutter/material.dart';
import 'package:mobile_bank/features/main/presentation/pages/mainpage.dart';
import 'package:mobile_bank/themes/dark_mode.dart';
import 'package:mobile_bank/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank App',
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      initialRoute: '/home',
      routes: {
        "/home": (context) => Mainpage()
      },
    );
  }
}

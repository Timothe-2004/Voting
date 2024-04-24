import 'package:flutter/material.dart';
import 'package:voting_benin/Pages/home.dart';
import 'package:voting_benin/Pages/seconde_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/second': (context) => seconde_page(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:websitedart/homepage.dart' show HomePage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prasanth Perumal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFdda15e)),
      ),
      home: const HomePage(),
    );
  }
}










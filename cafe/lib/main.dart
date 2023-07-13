import 'package:flutter/material.dart';
import 'screens/cafe_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: const Color(0xffffffff),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w600, color: Colors.brown),
        ),
      ),
      home: const CafeScreen(),
    );
  }
}

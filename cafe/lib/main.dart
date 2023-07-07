import 'package:flutter/material.dart';
import 'screens/cafe_screen.dart';
import 'screens/menu_screen.dart';
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
         scaffoldBackgroundColor: Color(0xffffffff),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: Colors.brown ),
           subtitle1:TextStyle(color: Color(0xFFA7A7A7),fontSize: 12)
        ),
      ),
      home:CafeScreen(),
    );
  }
}


import 'package:budget_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.greenAccent,
          elevation: 0,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

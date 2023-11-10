import 'package:flutter/material.dart';
import 'package:warungmakan/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warung Makan',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins', colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(background: Color(0xFFFFF9F7)),
      ),
      home: const MainScreen(),
    );
  }
}

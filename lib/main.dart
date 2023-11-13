import 'package:flutter/material.dart';
import 'package:warungmakan/screen/detail_screen_web.dart';
import 'package:warungmakan/screen/main_screen.dart';
import 'package:warungmakan/screen/detail_screen_mobile.dart';

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
      home: MainScreen(),
    );
  }
}

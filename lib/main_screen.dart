import 'package:flutter/material.dart';
import 'package:warungmakan/container/first_main_container.dart';
import 'package:warungmakan/container/second_main_container.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FirstMainContainer(),
            SecondMainContainer(),
          ],
        ),
      ) 
    );
  }
}
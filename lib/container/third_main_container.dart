import 'package:flutter/material.dart';

class ThirdMainContainer extends StatelessWidget{
  const ThirdMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    const colorBox =const Color(0xff152039);
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70.0),
          ),
          color: colorBox,
      ),
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
    );
  }

}
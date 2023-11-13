import 'package:flutter/material.dart';
import 'package:warungmakan/model/model.dart';
import 'package:warungmakan/screen/detail_screen_mobile.dart';
import 'package:warungmakan/screen/detail_screen_web.dart';

class DetailScreen extends StatelessWidget{
  final Menu menu;

  const DetailScreen({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth>900){
          return DetailScreenWeb(menu: this.menu);
        }
        return DetailScreenMobile(menu: this.menu);
      }),
    );
  }

}
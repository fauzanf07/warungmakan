import 'package:flutter/material.dart';
import 'package:warungmakan/container/first_main_container.dart';
import 'package:warungmakan/container/second_main_container.dart';
import 'package:warungmakan/container/third_main_container.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth>1000){
          return const SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FirstMainContainer(showName: true, isWidthEnough: true, widthInput: 300.0 ),
                SecondMainContainer(countGrid: 5, heightCard: 250,),
                ThirdMainContainer(),
              ],
            ),
          );
        }
        else if(constraints.maxWidth>600){
          return const SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FirstMainContainer(showName: true,),
                SecondMainContainer(countGrid: 4, heightCard: 170, ),
                ThirdMainContainer(),
              ],
            ),
          );
        }
        return const SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FirstMainContainer(),
                SecondMainContainer(heightSideBox: 20.0,),
                ThirdMainContainer(),
              ],
            ),
        );
      })
    );
  }
}
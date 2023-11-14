import 'package:flutter/material.dart';
import 'package:warungmakan/model/model.dart';
import 'package:warungmakan/screen/detail_screen.dart';
import 'package:warungmakan/screen/detail_screen_mobile.dart';
import 'package:warungmakan/screen/detail_screen_web.dart';

class SecondMainContainer extends StatelessWidget{
  final int countGrid;
  final double heightCard;
  final double heightSideBox;
  final double fontSizeCard;
  final double fontSizeLabel;

  const SecondMainContainer({super.key, this.countGrid = 3, this.heightCard = 120.0, this.heightSideBox = 30.0, this.fontSizeCard = 10.0, this.fontSizeLabel = 8.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Warung Serba Ada!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Color(0xff152039),
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TabContainer(text: 'Semua', isCurrent: true),
                TabContainer(text: 'Menu Utama', isCurrent: false),
                TabContainer(text: 'Sambal', isCurrent: false),
                TabContainer(text: 'Gorengan', isCurrent: false),
                TabContainer(text: 'Minuman', isCurrent: false),
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Divider(height: heightSideBox,),

          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Menu Utama',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Color(0xff152039),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: heightSideBox),
          GridViewCard(count: countGrid, menu: menu_utama, scrollDirection: Axis.vertical, aspectRatio: 0.8, fontSizeCard: fontSizeCard, fontSizeLabel: fontSizeLabel,),
          SizedBox(height: heightSideBox),
          Divider(height: heightSideBox, indent: 60.0, endIndent: 60.0,),
          

          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Sambal',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Color(0xff152039),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: heightSideBox),
          GridViewCard(count: countGrid, menu: sambal, scrollDirection: Axis.vertical, aspectRatio: 0.8,fontSizeCard: fontSizeCard, fontSizeLabel: fontSizeLabel,),
          SizedBox(height: heightSideBox),
          Divider(height: heightSideBox, indent: 60.0, endIndent: 60.0,),
          

          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Gorengan',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Color(0xff152039),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: heightSideBox),
          GridViewCard(count: countGrid, menu: gorengan, scrollDirection: Axis.vertical, aspectRatio: 0.8, fontSizeCard: fontSizeCard, fontSizeLabel: fontSizeLabel,),
          SizedBox(height: heightSideBox),
          Divider(height: heightSideBox, indent: 60.0, endIndent: 60.0,),
          
          
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Minuman',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Color(0xff152039),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: heightSideBox),
          SizedBox(
            height: heightCard,
            child: GridViewCard(
              count: 1, 
              menu: minuman, 
              scrollDirection: Axis.horizontal, 
              aspectRatio: 1.32,
              fontSizeCard: fontSizeCard, 
              fontSizeLabel: fontSizeLabel,
            )
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}

class TabContainer extends StatelessWidget{
  final String text;
  final bool isCurrent;

  TabContainer({super.key, required this.text, required this.isCurrent});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          right: 10.0,
        ),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: isCurrent ? const Color(0xFF0048E8) : const Color(0xff152039),
        ),
        child: Text(
          '$text',
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget{
  final Menu menu;
  final double fontSizeCard;
  final double fontSizeLabel;

  const MenuCard({super.key, required this.menu, required this.fontSizeCard, required this.fontSizeLabel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context){
                  return DetailScreen(menu: this.menu,);
                }
              )
            );
          },
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    height: 140.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                        image: AssetImage(menu.urlImg),
                        fit: BoxFit.cover,
                      )
                    ),
                    child: Stack(
                      children: [
                        menu.isFree ?  Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.0, top: 5.0),
                          padding: EdgeInsets.symmetric( horizontal: 13.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xFFFFE34F),
                          ),
                          child: Text(
                            'Gratis',
                            style: TextStyle(fontSize: fontSizeLabel, color: Color(0xff152039)),
                          ),
                        ),
                      ) : Align(),
                      menu.isOut ?  Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 5.0, bottom: 5.0),
                          padding: EdgeInsets.symmetric( horizontal: 13.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color.fromARGB(255, 255, 79, 79),
                          ),
                          child: Text(
                            'Habis',
                            style: TextStyle(fontSize: fontSizeLabel, color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ) : Align(),
                      ],
                    ),
                  ),
                
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Wrap(
                    children: <Widget>[
                      Center(
                        child: Text(this.menu.nama, textAlign: TextAlign.center, style: TextStyle(color: Color(0xff152039), fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: fontSizeCard,),),
                      ),
                    ],
                  ), 
                ),
              ],
            ),
          ),
        ) 
      ),
    );
  }
}

class GridViewCard extends StatelessWidget{
  int count;
  List<Menu> menu;
  Axis scrollDirection;
  double aspectRatio;
  double fontSizeCard;
  double fontSizeLabel;


  GridViewCard({super.key, required this.count, required this.menu, required this.scrollDirection, required this.aspectRatio, required this.fontSizeCard, required this.fontSizeLabel});
  
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => GridView.count(
        scrollDirection: scrollDirection,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: count,
        childAspectRatio: aspectRatio,
        shrinkWrap: true,
        children: menu.map((menus) {
          return MenuCard(menu: menus, fontSizeCard: fontSizeCard, fontSizeLabel: fontSizeLabel,);
        }).toList(),
      ),
    );
  }

}
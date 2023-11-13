import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:warungmakan/container/content_detail_container.dart';
import 'package:warungmakan/model/model.dart';

class DetailScreenMobile extends StatelessWidget{
  final Menu menu;

  const DetailScreenMobile({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(menu.urlImg),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 25.0),
                  child: ContentDetailContainer(menu: this.menu,),
                )
              ],
            ),
            Positioned(
              top: 15.0, 
              left: 2.0,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff152039),
                  size: 35.0,
                ),
                onPressed: () {  
                  return Navigator.pop(context);
                },
              ) 
            ),

            menu.isFree? Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: 15.0, top: 30.0),
                padding: EdgeInsets.symmetric( horizontal: 13.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xFFFFE34F),
                ),
                child: const Text(
                  'Gratis',
                  style: TextStyle(fontSize: 15.0, color: Color(0xff152039)),
                ),
              ),
            ) : Align(),
            menu.isOut? const Positioned(
              top: 200,
              left: 10,
              child: CircleAvatar(
                radius: 35.0,
                backgroundColor: Color.fromARGB(255, 255, 79, 79),
                child: Text(
                  'Habis!',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
              ),
            ) : Align(),
            Positioned(
              top: 279.0,
              left : (MediaQuery.of(context).size.width/2)-125,
              child: Container(
                width: 250,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xff152039),
                ),
                child: Text(menu.nama,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontFamily: 'Poppins', color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Color(0xFFFFF9F7),
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              context: context, 
              builder: (context) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 30,left: 30, right: 30,bottom: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.add),
                            hintText: '1',
                            labelText: 'Jumlah Porsi',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30,bottom:20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.assignment_add),
                            hintText: 'Yang satu dibungkus',
                            labelText: 'Catatan',
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 5,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 30,bottom: 30),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color(0xff152039)),
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              )
                            ),
                            foregroundColor: MaterialStatePropertyAll(Colors.white),
                            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 15.0))
                          ),
                          onPressed: () {  },
                          child: const Text(
                            'Tambah ke Piring',
                          ),
                        )
                      )
                    ],
                  ),
                );
              },
            );
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(0xff152039)),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              )
            ),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
          child: const Text(
                'Pesan Menu Ini',
              ),)
      ),
    );
  }

}
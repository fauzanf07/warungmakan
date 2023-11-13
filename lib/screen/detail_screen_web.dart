import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:warungmakan/model/model.dart';

class DetailScreenWeb extends StatelessWidget{
  final Menu menu;

  const DetailScreenWeb({super.key, required this.menu});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () { return Navigator.pop(context); }, 
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff152039),
                          size: 35.0,
                        ),
                      ),
                      Text('Warung Makan Sinar Jaya',style: TextStyle(color: Color(0xff152039), fontWeight: FontWeight.bold, fontSize: 14)),
                    ],
                  ),
                  Card(
                    elevation: 5,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(image: AssetImage(menu.urlImg), fit: BoxFit.cover)
                            ),
                            margin: EdgeInsets.all(20),
                            child: Stack(
                              children: [
                                menu.isFree ? Align(
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
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 20),
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
                                ),
                                menu.isOut ? const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 35.0,
                                      backgroundColor: Color.fromARGB(255, 255, 79, 79),
                                      child: Text(
                                        'Habis!',
                                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ): Text(''),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: 400,
                                padding: EdgeInsets.all(30),
                                margin: EdgeInsets.only(top:20, right: 20, bottom: 20),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff152039), width: 2),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Rp. '+menu.harga.toString()+' /porsi',
                                                style: const TextStyle(
                                                  fontSize: 23,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w900,
                                                  color: Color(0xff152039),
                                                ),
                                              ),
                                              const Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 1.0),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(255, 255, 215, 15),
                                                      size: 18,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 1.0),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(255, 255, 215, 15),
                                                      size: 18,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 1.0),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(255, 255, 215, 15),
                                                      size: 18,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 1.0),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(255, 255, 215, 15),
                                                      size: 18,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 3.0),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Color.fromARGB(255, 255, 215, 15),
                                                      size: 18,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top:4.0, left: 5.0),
                                                    child: Text(
                                                      '+7.2 Rb',
                                                      style: TextStyle(
                                                        color: Color(0xff152039),
                                                        fontSize: 13,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w500
                                                      ),
                                                    )
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(top: 5.0, left: 2.0),
                                                    child: Icon(
                                                      Icons.add_shopping_cart,
                                                      color: Color(0xff152039),
                                                      size: 17,
                                                    )
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(top: 5.0, left: 5.0),
                                                    child: Text(
                                                      'Tersedia : ',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15,
                                                        color: Color(0xff152039),
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    )
                                                  ),   
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 6.5, left: 5.0),
                                                    child: Text(
                                                      menu.stok.toString(),
                                                      style: const  TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 15,
                                                        color: Color(0xff152039),
                                                      ),
                                                    )
                                                  ),  
                                                ],
                                              ),
                                            ],
                                          ),
                                          AddFavorite(likes: menu.likes),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(),
                                      ),
                                      const Text(
                                        'Deskripsi',
                                        style: TextStyle(
                                          color: Color(0xff152039),
                                          fontSize: 17,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        menu.deskripsi,
                                        style: const TextStyle(
                                          color: Color(0xff152039),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      const SizedBox(height: 5),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          const Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Beri Bintang!',
                                              style: TextStyle(
                                                color: Color(0xff152039),
                                                fontSize: 17,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.bold
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              AddStar(),
                                            ],)
                                        ],
                                      ),
                                      ElevatedButton(
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
                                                            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20.0)),
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
                                            padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20),), 
                                          ),
                                          child: const Text(
                                                'Pesan Menu Ini',
                                              ),),
                                    ],
                                  ),
                                ) 
                              ),
                            ],
                          
                          )
                        ),
                      ],
                    )
                  )
                ],
              )
            ),
          ),
          
        ],
      ),
    );
  }

}

class AddFavorite extends StatefulWidget{
  final int likes;

  const AddFavorite({super.key, required this.likes});
  
  @override
  _AddFavorite createState() => _AddFavorite(likesState: this.likes);
}

class _AddFavorite extends State<AddFavorite>{
  bool isAdded = false;
  int likesState;

  _AddFavorite({required this.likesState});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 4.0),
          child: IconButton(
            icon: Icon(
              isAdded? Icons.favorite : Icons.favorite_border_outlined,
              color: Colors.red,
              size: 30,
            ), 
            onPressed: () {
              setState(() {
                isAdded? likesState-- : likesState++;
                isAdded = !isAdded;
              });
            },
          ) 
        ),
        Padding(
          padding: EdgeInsets.only(top:1.0),
          child: Text(
            '$likesState',
            style: const TextStyle(
              color: Color(0xff152039),
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500
            ),
          )
        ),
      ],
    );
  }
}

class AddStar extends StatefulWidget{
  @override
  _AddStar createState() => _AddStar();
}

class _AddStar extends State<AddStar>{
  bool isAddedStar1 = false;
  bool isAddedStar2 = false;
  bool isAddedStar3 = false;
  bool isAddedStar4 = false;
  bool isAddedStar5 = false;
  String interpretasi = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:const EdgeInsets.only(right: 8.0, top: 10.0),
              child: IconButton(
                icon: Icon(
                  isAddedStar1? Icons.star : Icons.star_border_outlined,
                  color: Color.fromARGB(255, 255, 215, 15),
                  size: 35,
                ), 
                onPressed: () { 
                  setState(() {
                    isAddedStar1 = true;
                    isAddedStar2 = false;
                    isAddedStar3 = false;
                    isAddedStar4 = false;
                    isAddedStar5 = false;
                    interpretasi = 'Ngga Banget';
                  });
                },
              ), 
            ),
            Padding(
              padding:const EdgeInsets.only(right: 8.0, top: 10.0),
              child: IconButton(
                icon: Icon(
                  isAddedStar2? Icons.star : Icons.star_border_outlined,
                  color: Color.fromARGB(255, 255, 215, 15),
                  size: 35,
                ), 
                onPressed: () { 
                  setState(() {
                    isAddedStar1 = true;
                    isAddedStar2 = true;
                    isAddedStar3 = false;
                    isAddedStar4 = false;
                    isAddedStar5 = false;
                    interpretasi = 'Biasa Saja';
                  });
                },
              ), 
            ),
            Padding(
              padding:const EdgeInsets.only(right: 8.0, top: 10.0),
              child: IconButton(
                icon: Icon(
                  isAddedStar3? Icons.star : Icons.star_border_outlined,
                  color: Color.fromARGB(255, 255, 215, 15),
                  size: 35,
                ), 
                onPressed: () { 
                  setState(() {
                    isAddedStar1 = true;
                    isAddedStar2 = true;
                    isAddedStar3 = true;
                    isAddedStar4 = false;
                    isAddedStar5 = false;
                    interpretasi = 'Lumayan';
                  });
                },
              ), 
            ),
            Padding(
              padding:const EdgeInsets.only(right: 8.0, top: 10.0),
              child: IconButton(
                icon: Icon(
                  isAddedStar4? Icons.star : Icons.star_border_outlined,
                  color: Color.fromARGB(255, 255, 215, 15),
                  size: 35,
                ), 
                onPressed: () { 
                  setState(() {
                    isAddedStar1 = true;
                    isAddedStar2 = true;
                    isAddedStar3 = true;
                    isAddedStar4 = true;
                    isAddedStar5 = false;
                    interpretasi = 'Enak';
                  });
                },
              ), 
            ),
            Padding(
              padding:const EdgeInsets.only(right: 8.0, top: 10.0),
              child: IconButton(
                icon: Icon(
                  isAddedStar5? Icons.star : Icons.star_border_outlined,
                  color: Color.fromARGB(255, 255, 215, 15),
                  size: 35,
                ), 
                onPressed: () { 
                  setState(() {
                    isAddedStar1 = true;
                    isAddedStar2 = true;
                    isAddedStar3 = true;
                    isAddedStar4 = true;
                    isAddedStar5 = true;
                    interpretasi = 'Mantap Banget';
                  });
                },
              ), 
            ),

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top:10, bottom: 20),
          child: Text(
            interpretasi,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ) 
      ],
    );
  }

}
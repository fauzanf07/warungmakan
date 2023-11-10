import 'package:flutter/material.dart';

class SecondMainContainer extends StatelessWidget{
  const SecondMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          Divider(),
          SizedBox(height: 10.0,),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) => GridView.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                shrinkWrap: true,
                children: <Widget>[
                  MenuCard(urlImg: 'images/nasi.jpg', nama: 'Nasi'),
                  MenuCard(urlImg: 'images/ayam-serundeng.jpg', nama: 'Ayam Serundeng'),
                  MenuCard(urlImg: 'images/cumi-asam-manis.jpg', nama: 'Cumi Asam Manis'),
                  MenuCard(urlImg: 'images/pecel-lele.jpg', nama: 'Pecel Lele'),
                  MenuCard(urlImg: 'images/perkedel-kentang.jpg', nama: 'Perkedel Kentang'),
                  MenuCard(urlImg: 'images/rendang.jpg', nama: 'Rendang'),
                  MenuCard(urlImg: 'images/telur-balado.jpg', nama: 'Telur Balado'),
                  MenuCard(urlImg: 'images/tumis-kangkung.jpg', nama: 'Tumis Kangkung'),
                  MenuCard(urlImg: 'images/tempe-bacem.jpg', nama: 'Tempe Bacem'),
                ],
              ),
          ),
          SizedBox(height: 20.0),
          Divider(height: 10.0, indent: 80.0, endIndent: 80.0,),
          SizedBox(height: 20.0),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) => GridView.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                shrinkWrap: true,
                children: <Widget>[
                  MenuCard(urlImg: 'images/sambal-cobek.jpg', nama: 'Sambal Cobek'),
                  MenuCard(urlImg: 'images/sambal-dabu-dabu.jpg', nama: 'Sambal Dabu-Dabu'),
                  MenuCard(urlImg: 'images/sambal-ijo.jpg', nama: 'Sambal Ijo'),
                  MenuCard(urlImg: 'images/sambal-matah.jpg', nama: 'Sambal Matah'),
                  MenuCard(urlImg: 'images/sambal-roa.jpg', nama: 'Sambal Roa'),
                  MenuCard(urlImg: 'images/sambal-terasi.jpg', nama: 'Sambal Terasi'),
                ],
              ),
          ),
          SizedBox(height: 20.0),
          Divider(height: 10.0, indent: 80.0, endIndent: 80.0,),
          SizedBox(height: 20.0),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) => GridView.count(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                shrinkWrap: true,
                children: <Widget>[
                  MenuCard(urlImg: 'images/bakwan.jpg', nama: 'Bakwan'),
                  MenuCard(urlImg: 'images/gehu.jpg', nama: 'Gehu'),
                  MenuCard(urlImg: 'images/cireng.jpg', nama: 'Cireng'),
                  MenuCard(urlImg: 'images/karoket.jpg', nama: 'Karoket'),
                  MenuCard(urlImg: 'images/risol.jpeg', nama: 'Risol'),
                  MenuCard(urlImg: 'images/tempe-goreng.jpg', nama: 'Tempe Goreng'),
                  MenuCard(urlImg: 'images/pisang-goreng.jpg', nama: 'Pisang Goreng'),
                ],
              ),
          ),
          SizedBox(height: 20.0),
          Divider(height: 10.0, indent: 80.0, endIndent: 80.0,),
          SizedBox(height: 20.0,),
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
  final String urlImg;
  final String nama;

  const MenuCard({super.key, required this.urlImg, required this.nama});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 500,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Stack(
                      children: [
                        Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            image: DecorationImage(
                              image: AssetImage('$urlImg'),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 5.0, top: 5.0),
                            padding: EdgeInsets.symmetric( horizontal: 13.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: Color(0xFFFFE34F),
                            ),
                            child: const Text(
                              'Gratis',
                              style: TextStyle(fontSize: 8.0, color: Color(0xff152039)),
                            ),
                          ),
                        ) 
                      ],
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Wrap(
                  children: <Widget>[
                    Center(
                      child: Text('$nama', textAlign: TextAlign.center, style: TextStyle(color: Color(0xff152039), fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 10,),),
                    ),
                  ],
                ), 
              ),
            ],
          ),
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';

class FirstMainContainer extends StatelessWidget {
  final bool showName;
  final bool isWidthEnough;
  final double widthInput;

  const FirstMainContainer({
    super.key, this.showName = false, this.isWidthEnough = false, this.widthInput = 230.0,
  });

  @override
  Widget build(BuildContext context) {
    const colorBox =const Color(0xff152039);
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(70.0),
          ),
          color: colorBox,
        ),
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 35.0),
          child: Column(
            children: < Widget > [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: < Widget > [
                    Row(
                      children: [
                        const Icon(
                          Icons.food_bank,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        showName ? const Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            'Warung Makan Sinar Jaya',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ) : Text(''),
                      ]
                    ),
                    SizedBox(
                      width: widthInput,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        margin: EdgeInsets.only(top: 2.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white,
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.fastfood,
                              color: Colors.black,
                              size: 15.0,
                            ),
                            hintText: 'Mau makan apa hari ini?',
                            filled: true,
                            fillColor: Colors.white,
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ) 
                    ),
                    
                ],
              ),
              SizedBox(height: 12.0),
              Align(
                alignment: isWidthEnough? Alignment.center : Alignment.centerLeft,
                child: isWidthEnough ? const Text(
                  'Selamat Datang, Fauzan Fiqriansyah!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFE34F),
                    fontSize: 20.6,
                    fontWeight: FontWeight.bold,
                  ),
                ) : const Text(
                  'Selamat Datang, \nFauzan Fiqriansyah!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFE34F),
                    fontSize: 20.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              SizedBox(height: 12.0),
              Row(
                children: < Widget > [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0048E8),
                            borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            const Text(
                                'Pesanan Gratis Ongkir!',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 13.1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 3.0),
                              const Text(
                                  'Gunakan sebelum tanggal 30 november!',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 8.0
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                SizedBox(
                                  width: 200.0,
                                  height: 20.0,
                                  child: ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll < Color > (Color.fromARGB(255, 215, 223, 35)),
                                      ),
                                      child: const Text('Klaim', style: TextStyle(color: Color(0xff152039), fontSize: 10.0)),
                                        onPressed: () {},
                                  ),
                                )
                          ],
                        )
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF0048E8),
                            borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            const Text(
                                'Pesanan Gratis Ongkir!',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 13.1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 3.0),
                                const Text(
                                    'Gunakan sebelum tanggal 30 november!',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 8.0
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  SizedBox(
                                    width: 200.0,
                                    height: 20.0,
                                    child: ElevatedButton(
                                      style: const ButtonStyle(
                                          backgroundColor: MaterialStatePropertyAll < Color > (Color.fromARGB(255, 215, 223, 35)),
                                        ),
                                        child: const Text('Klaim', style: TextStyle(color: Color(0xff152039), fontSize: 10.0)),
                                          onPressed: () {},
                                    ),
                                  )
                          ],
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
                const Center(
                  child: Divider(
                    color: Color(0xFF0048E8),
                    thickness: 4.0,
                    indent: 60.0,
                    endIndent: 60.0,
                  ),
                )
            ],
          )
    );
  }
}
import 'package:flutter/material.dart';

class FirstMainContainer extends StatelessWidget {
  const FirstMainContainer({
    super.key
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
                  const Icon(
                      Icons.food_bank,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    Container(
                      width: 230,
                      height: 30,
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.white
                          ),
                          child: const Row(
                            children: < Widget > [
                              Icon(
                                Icons.fastfood,
                                color: Colors.black,
                                size: 15.0,
                              ),
                              SizedBox(width: 10.0),
                              Text('Mau makan apa hari ini?', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                            ],
                          ),
                    ),
                ],
              ),
              SizedBox(height: 12.0),
              Center(
                child: Row(
                  children: < Widget > [
                    Center(
                      child: Container(
                        child: const Text(
                          'Selamat Datang,\nFauzan Fiqriansyah!',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xFFFFE34F),
                            fontSize: 20.6,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                Center(
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
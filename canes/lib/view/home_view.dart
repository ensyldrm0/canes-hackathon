import 'dart:ffi';

import 'package:canes/view/profil_view.dart';
import 'package:canes/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widget/BottomNavigation.dart';
import 'detail_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List Screen = [
    splash_screen(),
    HomePage(),
    DetailPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 1, 12, 21),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black,
              child: Column(children: [
                //Grafikler
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Grafikler",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, "/home");
                              },
                              icon: const Icon(
                                Icons.play_circle_outline,
                                textDirection: TextDirection.ltr,
                              ),
                              label: const Text(
                                "Premium’a Geç",
                                style: TextStyle(fontSize: 15),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 20,
                                  primary: const Color(0xFF0A5D75),
                                  minimumSize: const Size(50, 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/grafik.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/grafik.jpg"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                ),
                //Borsalar
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(right: 220),
                  child: Text(
                    "Borsalar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: const Icon(
                            Icons.search,
                            size: 35,
                          ),
                          backgroundColor: Colors.grey.shade900,
                        ),
                        SizedBox(height: 10,),
                        Text("Ara",style: TextStyle(color:Colors.white),),
                      ],
                    ),
                    const SizedBox(width: 14),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/btc.png"),
                        ),
                        
                        SizedBox(height: 10,),
                        Text("BTC",style: TextStyle(color:Colors.white),),
                      ],
                    ),
                    const SizedBox(width: 14),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/eth.png"),
                        ),
                        SizedBox(height: 10,),
                        Text("ETH",style: TextStyle(color:Colors.white),),
                      ],
                    ),
                    const SizedBox(width: 14),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/bnb.png"),
                        ),
                        SizedBox(height: 10,),
                        Text("BNB",style: TextStyle(color:Colors.white),),
                      ],
                    ),
                    const SizedBox(width: 14),
                    Column(
                      children: [
                          InkWell(
                            onTap: () {
                              showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      title: new Text("Premium Üye Olunuz"),
      content: new Text("Daha fazla Coin takip etmek ve avantajlardan yararlanmak için Premium üyeliğe geçiniz"),
      actions: <Widget>[
        new TextButton(
          child: new Text("Dön"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  },
);
                            },
                           child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/daha.png"),
                            child:Text("+43"),
                                                 ),
                         ),
                        SizedBox(height: 10,),
                        Text("Dahası",style: TextStyle(color:Colors.white),),

                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                //Haberler
                Row(
                  children: [
                    const Text(
                      "Haberler",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Daha Fazla",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.grey.shade600,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 400,
                  height: 70,
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/fed.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 10),
                      child: SizedBox(
                        width: 170,
                        child: Column(
                          children: [
                            const Text(
                              "Amerikan Merkez Bankası Faiz Oranlarını Açıkladı",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              "Bugün 11:01",
                              style: TextStyle(color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Şimdi",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  width: 400,
                  height: 70,
                  child: Row(children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/twit.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 10),
                      child: SizedBox(
                        width: 170,
                        child: Column(
                          children: [
                            const Text(
                              "Elon Musk’tan Bitcoin Tweeti",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              "Bugün 16:30",
                              style: TextStyle(color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "5 Saat",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ]),
                ),
                 Row(children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/tmb.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 10),
                      child: SizedBox(
                        width: 170,
                        child: Column(
                          children: [
                            const Text(
                              "Merkez Bankası Toplantı Tarihi Belli Oldu",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              "Dün 13:45",
                              style: TextStyle(color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Dün",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ]),

              ]),
            ),
          ),
          ),
          ),
          );
  }
}

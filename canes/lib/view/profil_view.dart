import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 1, 12, 21),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(children: [
                  //Cüzdanım
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Cüzdanım",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
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
                  SizedBox(height: 15),
                  //PROFİL FOTOSU
                  Container(
                    child:
                        Image(image: AssetImage("assets/images/image 3.png")),
                  ),
                  Text(
                    "Enes Yıldırım",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  //FAVORİLER KISMI
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 220),
                        child: Text(
                          "Favoriler",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0XFF373A3D),
                        ),
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              width: 50,
                              child: Image(
                                  image: AssetImage("assets/images/btc.png")),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),                  
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "BTC",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Bitcoin/USD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Text(
                            "46.168\$",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF04A71E)),
                          )
                        ]),
                      ),
                      SizedBox(height: 10,),
// ==>ETH
                      Container(
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0XFF373A3D),
                        ),
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              width: 50,
                              child: Image(
                                  image: AssetImage("assets/images/eth.png")),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "ETH",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Etherium/USD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "3467\$",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB80303)),
                          )
                        ]),
                      ),
                      SizedBox(height: 10,),
       //==>BNB               
                      Container(
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0XFF373A3D),
                        ),
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              width: 50,
                              child: Image(
                                  image: AssetImage("assets/images/bnb.png")),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "BNB",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Dinancecoin/USD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Text(
                            "446\$",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF04A71E)),
                          )
                        ]),
                      ),
                      SizedBox(height: 10,),
     // ==>USD                 
                      Container(
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0XFF373A3D),
                        ),
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              width: 50,
                              child: Image(
                                  image: AssetImage("assets/images/usd.png")),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  "USD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "USD/TRY",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Text(
                            "14,75₺",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF04A71E)),
                          )
                        ]),
                      ),
                      SizedBox(height:10 ,),
                      Container(
                        width: 350,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0XFF373A3D),
                          image: DecorationImage(image: AssetImage("assets/images/arti 1.png"))
 
                        ),
                      )],
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}

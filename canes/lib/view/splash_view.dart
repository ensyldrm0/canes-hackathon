import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);
  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 12, 21),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          color: Colors.black,
          child: Column(
            children: [
              //Fotoğraf
            Container(
              child: Image(image: AssetImage("assets/images/Logo.png")),
            ),
              SizedBox(
                height: 90,
              ),
              //Yazı
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crypto Dinar",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Kripto",
                      style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Piyasasındaki",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Gözünüz.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              //Get Started
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Bottom");
                      },
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_forward,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      label: const Text(
                        "Giriş",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 20,
                          primary: const Color(0xFF0A5D75),
                          minimumSize:  Size(140, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

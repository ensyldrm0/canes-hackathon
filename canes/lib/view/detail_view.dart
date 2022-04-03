import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
                        "Forum",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                       SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
 // ==> Geçiş Buradan                          
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
                //Haber
                const SizedBox(
                  height: 20,
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
            
                //Gün sayacı
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 400,
                  height: 70,
                  color: Colors.grey.shade800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "1 saat",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 130,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 40, top: 25),
                          child: Text(
                            "Bugün",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Text(
                        "1 hafta",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Yorumlar
                Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade500),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "@enesyldrm",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Merkez bankasının bir sonraki açıklamasından merkeziyetsiz kripto paralara talebin artacağını düşünüyorum.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade500),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              "@ilaydakaratas",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Enes beye katılmıyorum, açıklamalardan sonra ufak bir yükseliş olsa da geri düşüş olacağını düşünüyorum.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(height: 30,),
                
                    ]),),]),),),),),);
    
  }
}

import 'package:canes/view/splash_view.dart';
import 'package:flutter/material.dart';

import 'view/home_view.dart';

void main() {
  runApp(const MyMain());
}

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
/* MaterialApp(
      initialRoute: "/",
    routes: {
      "/home": (context) =>HomePage(),
      
    },
      home: */
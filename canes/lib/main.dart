import 'package:canes/view/splash_view.dart';
import 'package:canes/widget/BottomNavigation.dart';
import 'package:flutter/material.dart';

import 'view/home_view.dart';

void main() {
  runApp(const MyMain());
}

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BottomNavigation(),
    );
  }
}
/* MaterialApp(
      initialRoute: "/",
    routes: {
      "/home": (context) =>HomePage(),
      
    },
      home: */
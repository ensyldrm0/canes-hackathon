import 'package:canes/view/home_view.dart';
import 'package:canes/view/splash_view.dart';
import 'package:flutter/material.dart';

import '../view/detail_view.dart';
import '../view/haberler_view.dart';
import '../view/profil_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List Screen = [
    HomePage(),
    Haberler(),
    DetailPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Screen[currentIndex],
    bottomNavigationBar:
    BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index)=>setState(()=>currentIndex=index),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF26333E),
      selectedItemColor: Colors.white54,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Anasayfa',
            backgroundColor: Colors.grey.shade900),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.chrome_reader_mode,
            color: Colors.white,
          ),
          label: 'Haberler',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.forum,
            color: Colors.white,
          ),
          label: 'Forum',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          label: 'Profil',
        ),
      ],
    ),);
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'Add_page.dart';
import 'detct_page.dart';
import 'notify_page.dart';
import 'setting_page.dart';

class BottonNav extends StatefulWidget {
  int selectedIndex = 0;
  // const BottonNav({super.key});

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  int currentIndex = 0;
  List widgetOption = [
    HomeScereen(),
    DetctScreens(),
    Addscreens(),
    NotifyScreens(),
    SettingScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetOption[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Detct',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'Nontify',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            // backgroundColor: Colors.indigo,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white, // สีของไอคอนที่ถูกเลือก
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true, 
        showUnselectedLabels: false, 
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}

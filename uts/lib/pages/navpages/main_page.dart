import 'package:flutter/material.dart';
import 'package:uts/pages/navpages/services_page.dart';
import 'package:uts/pages/navpages/collection_page.dart';
import 'package:uts/pages/navpages/home_page.dart';
import 'package:uts/pages/navpages/about_page.dart';

class MainPage extends StatefulWidget {
  @override
    _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List pages = [
    HomePage(),
    ServicesPage(),
    CollectionPage(),
    AboutPage(),
  ];

  int currentIndex=0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // unselectedFontSize: 0,
        // selectedFontSize: 0,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Services"),
          BottomNavigationBarItem(icon: Icon(Icons.collections_outlined), label: "Collection"),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded), label: "About"),
        ],
      ),
    );
  }
}

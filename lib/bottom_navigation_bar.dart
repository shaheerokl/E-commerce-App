import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/shop_page.dart';

import 'home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation(
      {super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  final screens=[Home(),ShopPage()];

  @override
  Widget build(BuildContext context) {



    return Scaffold(bottomNavigationBar:
        BottomNavigationBar(
          selectedItemColor: Color(0xff0DA54B),
          unselectedItemColor: Colors.black45,onTap: (index){
            setState(() {
              currentIndex=index;
            });
        },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ""),
          ],),

    body: screens[currentIndex],
    );


  }
}

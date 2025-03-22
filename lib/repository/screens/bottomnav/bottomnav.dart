import 'package:blinkit_clone/repository/screens/home/homescreen.dart';
import 'package:blinkit_clone/repository/screens/Print/printscreen.dart';
import 'package:blinkit_clone/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_clone/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_clone/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentindex = 0;
  List<Widget> pages = [
    Homescreen(),
    Cartscreen(),
    Categoryscreen(),
    Printscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentindex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "home 1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "shopping-bag 1.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "category 1.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImage(img: "printer 1.png"),
            label: "Printer",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        onTap: (index) {
          //To update the UI on clicking different icons on bottom bar
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}

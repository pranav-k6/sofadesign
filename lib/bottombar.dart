import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sofa/cart.dart';
import 'package:sofa/favorit.dart';
import 'package:sofa/image.dart';
import 'package:sofa/login.dart';
import 'package:sofa/profile.dart';
import 'package:sofa/scanner.dart';
import 'package:sofa/sofa.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int index = 0;
  List<Widget> pages = [
    Products(),
    Favorit(),
    Scanner(),
    Cart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        backgroundColor: const Color.fromARGB(255, 228, 228, 227),
        bottomNavigationBar: CurvedNavigationBar(
          color: const Color.fromARGB(99, 29, 233, 178),
          backgroundColor: const Color.fromARGB(255, 174, 172, 47),
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          index: index,
           items: [
          Icon(
            Icons.home,
            size: 30,
            color: const Color.fromARGB(255, 195, 218, 237),
          ),
          Icon(Icons.favorite_border,
          size: 30,
          color: const Color.fromARGB(255, 195, 218, 237),
          ),
            Icon(Icons.qr_code_scanner_outlined,
          size: 30,
          color: const Color.fromARGB(255, 195, 218, 237),
          ),
            Icon(Icons.shopping_cart,
          size: 30,
          color: const Color.fromARGB(255, 195, 218, 237),
          ),
            Icon(Icons.person,
          size: 30,
          color: const Color.fromARGB(255, 195, 218, 237),
          ),
        ]));
  }
}

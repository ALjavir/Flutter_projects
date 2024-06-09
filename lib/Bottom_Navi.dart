// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/contain.dart';
import 'package:flutter_application/pages/email.dart';
import 'package:flutter_application/pages/expand.dart';
import 'package:flutter_application/pages/homepage.dart';
import 'package:flutter_application/pages/listv.dart';
import 'package:flutter_application/pages/piclv.dart';
import 'package:flutter_application/pages/singlecsv.dart';

class BoNaBa extends StatefulWidget {
  const BoNaBa({super.key});

  @override
  State<BoNaBa> createState() => _BoNaBaState();
}

class _BoNaBaState extends State<BoNaBa> {
  List<Widget> pagelist = [
    homepage(),
    Piclv(),
    ListV(),
    Containe(),
    singlecsv(),
    expandw(),
    Ep()
  ];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.cyan,
        child: BottomNavigationBar(
          currentIndex: num,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Unplash"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "listV"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box), label: "Container"),
            BottomNavigationBarItem(
                icon: Icon(Icons.text_fields_sharp), label: "Text"),
            BottomNavigationBarItem(
                icon: Icon(Icons.fullscreen_sharp), label: "Expend"),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Allcolor.email_hint_color,
          onTap: (value) {
            setState(() {
              num = value;
            });
          },
        ),
      ),
      body: pagelist.elementAt(num),
    );
  }
}

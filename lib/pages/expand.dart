// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homepage.dart';

class expandw extends StatelessWidget {
  const expandw({super.key});

  @override
  Widget build(BuildContext context) {
    homepage homePage = homepage();
    return Scaffold(
      appBar: homePage.buildAppBar("Expanded"),
      body: Row(children: [
        Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 255, 7, 7),
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: Color.fromARGB(255, 234, 255, 7),
            )),
        Expanded(
            flex: 3,
            child: Container(
              color: const Color.fromARGB(255, 7, 255, 28),
            )),
        Expanded(
            flex: 4,
            child: Container(
              color: const Color.fromARGB(255, 7, 238, 255),
            ))
      ]),
    );
  }
}

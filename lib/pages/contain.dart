// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homepage.dart';

class Containe extends StatelessWidget {
  const Containe({super.key});

  @override
  Widget build(BuildContext context) {
    homepage homePage = homepage();
    return Scaffold(
      appBar: homePage.buildAppBar("Container"),
      //backgroundColor: Color(0xFFfffaf0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 250.0,
              height: 150.0,
              color: Color(0xFF00ccff),
              child: Center(
                child: Text(
                  "container no1",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00ccff),
              ),
              child: Text(
                "ElevatedButton",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: 250.0,
              height: 150.0,
              color: Color(0xFF56ff93),
              child: Center(
                child: Text(
                  "container no2",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "TextButton",
                style: TextStyle(
                  color: Color(0xFF56ff93),
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              width: 250.0,
              height: 150.0,
              color: Color(0xFFff98cf),
              child: Center(
                child: Text(
                  "container no3",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Color(0xFFff98cf),
              ),
            )
          ],
        ),
      ),
    );
  }
}

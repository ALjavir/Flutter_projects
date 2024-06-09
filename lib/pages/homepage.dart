// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/email.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();

  buildAppBar(String customTitle) {
    return AppBar(
      backgroundColor: Color(0xFFfffaf0),
      title: Text(customTitle),
    );
  }
}

class _homepageState extends State<homepage> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFFfffaf0),
      title: Text("Home page"),
      actions: [
        Icon(Icons.search, size: 30),
        SizedBox(width: 12),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Ep()));
          },
          child: Icon(Icons.person_sharp, size: 30),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Drawer(
        backgroundColor: Color(0xFFfffaf0),
        child: Column(
          children: [
            SizedBox(
              child: Container(
                width: 20,
                height: 60,
              ),
            ),
            DrawerHeader(
              child: Image.asset(
                "assets/logo.png",
                width: 500,
                height: 500,
              ),
            ),
            SizedBox(
              child: Container(
                width: 20,
                height: 20,
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "setting",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "About",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.info),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        ),
      ),
      //body: body(),
    );
  }
}

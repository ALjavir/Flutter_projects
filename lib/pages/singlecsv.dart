// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homepage.dart';

class singlecsv extends StatelessWidget {
  const singlecsv({super.key});

  @override
  Widget build(BuildContext context) {
    homepage homePage = homepage();
    return Scaffold(
      appBar: homePage.buildAppBar("SingleChildScrollView"),
      body: Container(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.0,
          ),
          child: Text(
            '''Flutter, an open-source UI toolkit developed by Google, has revolutionized mobile app development with its cross-platform capabilities and streamlined workflow. With Flutter, developers can write code once and deploy it on both iOS and Android platforms, saving time and ensuring a consistent use experience across devices.
          A standout feature of Flutter  its 'hot reload,' enabling developers to instantly see the effects of code changes without restarting the entire application. This feature accelerates the development cycle, facilitating quick experimentation and bug fixes.
          The framework's expressive UI design is powered by a rich set of customizable widgets, allowing for visually appealing and intricate interfaces. Flutter also supports complex custom animations, contributing to engaging user experiences.
          Flutter's Dart programming language provides a reactive and performant environment, with its simplicity making it accessible to developers of varying expertise. The framework's versatility extends beyond mobile platforms, supporting web and desktop applications.
          Backed by a thriving open-source community and Google's resources, Flutter continues to evolve, playing a pivotal role in modern app development. Its efficiency, flexibility, and innovative features make Flutter a go-to choice for developers seeking a holistic solution for cross-platform applications.''',
            style: TextStyle(fontSize: 22),
          ),
        ),
      )),
    );
  }
}

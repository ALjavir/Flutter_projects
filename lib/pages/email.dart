// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Ep extends StatefulWidget {
  const Ep({super.key});

  @override
  State<Ep> createState() => _EpState();
}

class _EpState extends State<Ep> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Card(
          color: Color(0xFFFDFDF7),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFBFBF1),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your mail",
                        contentPadding: EdgeInsets.only(left: 13.0)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFBFBF1),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    controller: password,
                    obscureText: showpass,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your Password",
                        contentPadding: EdgeInsets.only(left: 12.0, top: 10),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              showpass = !showpass;
                            });
                          },
                          child: Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

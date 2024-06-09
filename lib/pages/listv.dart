import 'package:flutter/material.dart';
import 'package:flutter_application/classs/data.dart';
import 'package:flutter_application/pages/homepage.dart';

class ListV extends StatelessWidget {
  ListV({Key? key}) : super(key: key);

  List<StdMod> slist = [
    StdMod(1, "student", "NYU"),
    StdMod(2, "student", "NYU"),
    StdMod(3, "student", "NYU"),
    StdMod(4, "student", "NYU"),
    StdMod(5, "student", "NYU"),
    StdMod(6, "student", "NYU"),
    StdMod(7, "student", "NYU"),
    StdMod(8, "student", "NYU"),
  ];

  @override
  Widget build(BuildContext context) {
    homepage homePage = homepage();
    return Scaffold(
        appBar: homePage.buildAppBar("ListView.separated"),
        body: ListView.separated(
          shrinkWrap: true,
          itemCount: slist.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 2,
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text(
                  "${slist[index].id}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                "${slist[index].name} ${slist[index].varsity}",
                style: const TextStyle(fontSize: 25),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            shape: CircleBorder(),
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(Icons.add)));
  }
}

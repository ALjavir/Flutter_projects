import 'package:flutter/material.dart';
import 'package:flutter_application/classs/picdata.dart';
import 'package:flutter_application/pages/homepage.dart';

class Piclv extends StatelessWidget {
  const Piclv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    homepage homePage = const homepage();

    return Scaffold(
      appBar: homePage.buildAppBar("images"),
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: imagelist.length,
        separatorBuilder: (context, index) {
          return const Divider(
            height: 2,
            color: Colors.white,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: Image.network(
                      imagelist[index].image2,
                      fit: BoxFit.cover,
                    ).image,
                  ),
                  title: const Text(
                    "username",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.network(
                    imagelist[index].image,
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.maxFinite,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(alignment: Alignment.topRight),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const ContinuousRectangleBorder(),
                        backgroundColor: Colors.white,
                      ),
                      child: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 10),
                    const Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: const Color(0xFFFFF5EE),
                      ),
                      onPressed: () {},
                      child: const Text('Download'),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

enum SingingCharacter {
  Relevance,
  PriceLowtohigh,
  PriceHightoLow,
  NameAscending
}

class _CategoryState extends State<Category> {
  SingingCharacter? character = SingingCharacter.Relevance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Sort",
                    style: TextStyle(
                      color: const Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 194,
                  ),
                  Icon(
                    Icons.close,
                    color: const Color(0xff41825F),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Relevance",
                style: TextStyle(
                  color: const Color(0xff41825F),
                  fontSize: 18,
                ),
              ),
              trailing: Radio(
                activeColor: const Color(0xff41825F),
                value: SingingCharacter.Relevance,
                groupValue: character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                "Price: Low to  high",
                style: TextStyle(
                  color: const Color(0xff41825F),
                  fontSize: 18,
                ),
              ),
              trailing: Radio(
                activeColor: const Color(0xff41825F),
                value: SingingCharacter.PriceLowtohigh,
                groupValue: character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                "Price: High to Low",
                style: TextStyle(
                  color: const Color(0xff41825F),
                  fontSize: 18,
                ),
              ),
              trailing: Radio(
                activeColor: const Color(0xff41825F),
                value: SingingCharacter.PriceHightoLow,
                groupValue: character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                "Name: Ascending",
                style: TextStyle(
                  color: const Color(0xff41825F),
                  fontSize: 18,
                ),
              ),
              trailing: Radio(
                activeColor: const Color(0xff41825F),
                value: SingingCharacter.NameAscending,
                groupValue: character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    character = value;
                  });
                },
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      color: const Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.add,
                    color: const Color(0xff41825F),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Colour",
                    style: TextStyle(
                      color: const Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Icon(
                    Icons.add,
                    color: const Color(0xff41825F),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Brand",
                    style: TextStyle(
                      color: const Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Icon(
                    Icons.add,
                    color: const Color(0xff41825F),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Theme",
                    style: TextStyle(
                      color: const Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Icon(
                    Icons.sunny,
                    color: const Color(0xff41825F),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff41825F),
      //   foregroundColor: Colors.white,
      //   centerTitle: true,
      //   title: Text(
      //     "Plant",
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: FutureBuilder(
        future: rootBundle.loadString("lib/resource/jsonData.json"),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error : ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            List decodedList = jsonDecode(snapshot.data!);

            // return GridView.builder(
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     crossAxisSpacing: 8,
            //     mainAxisSpacing: 8,
            //   ),
            //   itemCount: decodedList.length,
            //   itemBuilder: (context, index) {
            //     return Column(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //             image: DecorationImage(
            //               image: AssetImage(
            //                 decodedList[index]['category-icon'],
            //               ),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // );
            return ListView.builder(
              itemCount: decodedList.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/Detail_Screen',
                            arguments: decodedList[i]);
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              decodedList[i]['category-icon'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      decodedList[i]['plant-category'],
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

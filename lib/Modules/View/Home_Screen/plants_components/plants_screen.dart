import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Plants_Screen extends StatefulWidget {
  const Plants_Screen({super.key});

  @override
  State<Plants_Screen> createState() => _Plants_ScreenState();
}

enum SingingCharacter {
  Relevance,
  PriceLowtohigh,
  PriceHightoLow,
  NameAscending
}

class _Plants_ScreenState extends State<Plants_Screen> {
  SingingCharacter? character = SingingCharacter.Relevance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Sort",
                    style: TextStyle(
                      color: Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 194,
                  ),
                  Icon(
                    Icons.close,
                    color: Color(0xff41825F),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                "Relevance",
                style: TextStyle(
                  color: Color(0xff41825F),
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
              title: const Text(
                "Price: Low to  high",
                style: TextStyle(
                  color: Color(0xff41825F),
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
              title: const Text(
                "Price: High to Low",
                style: TextStyle(
                  color: Color(0xff41825F),
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
              title: const Text(
                "Name: Ascending",
                style: TextStyle(
                  color: Color(0xff41825F),
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
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      color: Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xff41825F),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Colour",
                    style: TextStyle(
                      color: Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xff41825F),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Brand",
                    style: TextStyle(
                      color: Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Icon(
                    Icons.add,
                    color: Color(0xff41825F),
                  ),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    "Theme",
                    style: TextStyle(
                      color: Color(0xff41825F),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Icon(
                    Icons.sunny,
                    color: Color(0xff41825F),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff41825F),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Plant",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
        future: rootBundle
            .loadString("lib/Modules/JsonData/resource/jsonData.json"),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error : ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            List decodedList = jsonDecode(snapshot.data!);
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
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

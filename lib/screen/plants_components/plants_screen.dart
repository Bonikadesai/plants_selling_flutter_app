import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../model/plant_model.dart';

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
  late Future<List<PlantsModel>?> getPlant;
  //late Future<List<PlantDatabaseModel>> fetchAllCategory;

  //final JsonDecodeController jsonController = Get.put(JsonDecodeController());
  SingingCharacter? character = SingingCharacter.Relevance;

  @override
  void initState() {
    // TODO: implement initState
    //getPlant = JSONHelper.jsonHelper.loadJsonData();
    // fetchAllCategory = JsonHelper.jsonHelper.fetchAllCategory();
    super.initState();
  }

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
      appBar: AppBar(
        backgroundColor: const Color(0xff41825F),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Plant",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
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
// body: FutureBuilder(
//   future: fetchAllCategory,
//   builder: (context, snapshot) {
//     if (snapshot.hasError) {
//       return Center(
//         child: Text("Error : ${snapshot.error}"),
//       );
//     } else if (snapshot.hasData) {
//       List<PlantDatabaseModel>? data = snapshot.data;
//       if (data == null || data.isEmpty) {
//         return const Center(
//           child: Text("No available data..."),
//         );
//       } else {
//         return GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 8.0,
//           ),
//           itemCount: data.length,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () {
//                 Get.toNamed("/Detail_Screen", arguments: data[index]);
//               },
//               child: Column(
//                 children: [
//                   Container(
//                     height: 160,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(data[index].categoryIcon),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     data[index].plantCategory,
//                   )
//                 ],
//               ),
//             );
//           },
//         );
//       }
//     }
//     return Center(
//       child: CircularProgressIndicator(),
//     );
//   },
// // ),
// body: FutureBuilder(
//   future: rootBundle.loadString("lib/resource/jsonData.json"),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.done) {
//       List<PlantsModel> plantData = List<PlantsModel>.from(
//         jsonDecode(jsonController.jsonModel.data).map(
//           (x) => PlantsModel.fromMap(x),
//         ),
//       );
//       return GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisSpacing: 8.0,
//           crossAxisSpacing: 8.0,
//         ),
//         itemCount: plantData.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               Get.toNamed("/Detail_Screen", arguments: plantData);
//             },
//             child: Column(
//               children: [
//                 Container(
//                   height: 160,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(plantData[index].category_icon),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Text(plantData[index].plant_category),
//               ],
//             ),
//           );
//         },
//       );
//     } else {
//       return Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//   },
// ),
// body: SingleChildScrollView(
//   child: Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.toNamed('/Detail_Screen');
//                   },
//                   child: Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assets/category_flower/wildflower.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Wild Flower",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             GestureDetector(
//               onTap: () {
//                 Get.toNamed('/Detail_Screen');
//               },
//               child: Column(
//                 children: [
//                   Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image:
//                             AssetImage("assets/category_flower/weed.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "Weed",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.toNamed('/Detail_Screen');
//                   },
//                   child: Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assets/category_flower/thistle.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Thistle",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.toNamed('/Detail_Screen');
//                   },
//                   child: Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assets/category_flower/mashroom.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Mashroom",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.toNamed('/Detail_Screen');
//                   },
//                   child: Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image:
//                             AssetImage("assets/category_flower/herb.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Herb",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.toNamed('/Detail_Screen');
//                   },
//                   child: Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assets/category_flower/flower.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Flower",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.toNamed('/Detail_Screen');
//                   },
//                   child: Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assets/category_flower/ferns.png"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Ferns",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 5,
//             ),
//             Column(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Get.toNamed('/Detail_Screen');
//                   },
//                   child: Container(
//                     height: 185,
//                     width: 185,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                             "assets/category_flower/cactus.jpg"),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Text(
//                   "Cactus",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         height: 5,
//       ),
//     ],
//   ),
// ),

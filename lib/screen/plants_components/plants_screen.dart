import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_seling_app/controller/json_controller.dart';
import 'package:plant_seling_app/helper/json_helper.dart';
import 'package:plant_seling_app/model/plant_model.dart';

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
  final JsonDecodeController jsonController = Get.put(JsonDecodeController());
  SingingCharacter? character = SingingCharacter.Relevance;

  @override
  void initState() {
    // TODO: implement initState
    getPlant = JSONHelper.jsonHelper.loadJsonData();
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
        future: getPlant,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error : ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            PlantsModel data = snapshot.data;
            if (data == null) {
              return const Center(
                child: Text("No available data..."),
              );
            } else {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed("/Detail_Screen", arguments: data[index]);
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(""),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(data[index].plantcategory)
                      ],
                    ),
                  );
                },
              );
            }
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      // body: FutureBuilder(
      //   future: jsonController.loadJson(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       List<PlantModel> plantData = List<PlantModel>.from(
      //         jsonDecode(jsonController.jsonModel.data).map(
      //           (x) => PlantModel.fromMap(x),
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
    );
  }
}

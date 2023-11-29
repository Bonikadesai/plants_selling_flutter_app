import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details_Screen extends StatefulWidget {
  const Details_Screen({super.key});

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  //final CategoryController categoryController = Get.put(CategoryController());
  // final JsonDecodeController jsonController = Get.find<JsonDecodeController>();
  @override
  Widget build(BuildContext context) {
    Map data = Get.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          data['plant-category'],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff41825F),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: data['plants'].length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/Descripation_screen',
                        arguments: data['plants'][i]);
                  },
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          data['plants'][i]['plant-image'],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data['plants'][i]['plant-name'],
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      data['plants'][i]['discount'],
                      style: TextStyle(fontSize: 20, color: Color(0xff8BC667)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data['plants'][i]['price'],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data['plants'][i]['old-price'],
                      style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                    ),
                    Text(
                      "${data['plants'][i]['rating']} rating",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff8BC667),
                      ),
                      child: Center(
                        child: Text(
                          "Buy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      // body: Column(
      //   children: [
      //     // Container(
      //     //   height: 200,
      //     //   width: 200,
      //     //   decoration: BoxDecoration(
      //     //     image: DecorationImage(
      //     //       image: AssetImage(
      //     //         data['plant-image'],
      //     //       ),
      //     //     ),
      //     //   ),
      //     // ),
      //   ],
      // ),
    );
  }
}

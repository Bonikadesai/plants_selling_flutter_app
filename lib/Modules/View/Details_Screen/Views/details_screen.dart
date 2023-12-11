import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details_Screen extends StatelessWidget {
  const Details_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Map data = Get.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          data['plant-category'],
          style: const TextStyle(
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
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      data['plants'][i]['discount'],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff8BC667),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data['plants'][i]['price'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      data['plants'][i]['old-price'],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xff707070),
                      ),
                    ),
                    Text(
                      "${data['plants'][i]['rating']} rating",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff8BC667),
                      ),
                      child: const Center(
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
    );
  }
}

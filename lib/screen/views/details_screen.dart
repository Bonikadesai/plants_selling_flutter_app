import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text("Details Page")),
    );
    // List<Map<String, dynamic>> data =
    //     Get.arguments as List<Map<String, dynamic>>;
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Detail Page"),
    //     centerTitle: true,
    //   ),
    //   body: GridView.builder(
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //       mainAxisSpacing: 8.0,
    //       crossAxisSpacing: 8.0,
    //     ),
    //     itemCount: data.length,
    //     itemBuilder: (context, index) {
    //       var plant = data[index];
    //       return Column(
    //         children: [
    //           Container(
    //             decoration: BoxDecoration(
    //               image: DecorationImage(
    //                 image: NetworkImage(plant['plant-image']),
    //                 fit: BoxFit.cover,
    //               ),
    //             ),
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    // );
  }
}

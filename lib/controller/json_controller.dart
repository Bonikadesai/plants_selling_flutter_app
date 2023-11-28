import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:plant_seling_app/model/json_model.dart';
import 'package:plant_seling_app/model/plant_model.dart';

class JsonDecodeController extends GetxController {
  String jsonData = "";
  JsonModel jsonModel = JsonModel(jsonData: '', plant: []);

  Future<List<PlantModel>> loadJson() async {
    String path = "lib/resource/jsonData.json";
    jsonModel.jsonData = await rootBundle.loadString(path);

    List decodedList = jsonDecode(jsonModel.jsonData);
    jsonModel.plant = decodedList.map((e) => PlantModel.fromMap(e)).toList();
    return jsonModel.plant;
  }
}
//
// class CategoryController extends GetxController {
//   String jsonData = "";
//   CategoryModel categoryModel = CategoryModel(data: '');
//
//   Future<void> CategoryloadJson() async {
//     categoryModel.data =
//         await rootBundle.loadString('lib/resource/jsonData.json');
//     update();
//   }
// }
// class PlantController extends GetxController {
//   final RxList<PlantModel> plants = <PlantModel>[].obs;
//
//   Future<void> loadJsonData() async {
//     try {
//       String jsonData =
//           await rootBundle.loadString('lib/resource/jsonData.json');
//
//       List<dynamic> jsonDataList = jsonDecode(jsonData);
//       List<PlantModel> plantsList =
//           jsonDataList.map((data) => PlantModel.fromMap(data)).toList();
//
//       plants.assignAll(plantsList);
//     } catch (e) {
//       print('Error: $e');
//     }
//   }
// }

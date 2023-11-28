import 'package:plant_seling_app/model/category_model.dart';

class PlantModel {
  int category_id;
  String plant_category;
  String category_icon;
  List<CategoryModel> plants;

  PlantModel({
    required this.category_id,
    required this.plant_category,
    required this.category_icon,
    required this.plants,
  });

  factory PlantModel.fromMap(Map<String, dynamic> data) => PlantModel(
        category_id: data['category-id'],
        plant_category: data['plant-category'],
        category_icon: data['category-icon'],
        plants: List<CategoryModel>.from(
          data["plants"].map(
            (plants) => CategoryModel.fromMap(plants),
          ),
        ),
      );
}

// class PlantsModel {
//   // List plants;
//   String plantcategory;
//   String plantname;
//   int category_id;
//   String category_icon;
//   int id;
//   String plant_name;
//   String plant_image;
//   String price;
//   String old_price;
//   String discount;
//   String rating;
//
//   PlantsModel({
//     required this.plantcategory,
//     required this.plantname,
//     required this.category_id,
//     required this.category_icon,
//     required this.rating,
//     required this.discount,
//     required this.old_price,
//     required this.price,
//     required this.plant_image,
//     required this.plant_name,
//     required this.id,
//   });
//
//   factory PlantsModel.fromMap({required Map data}) {
//     return PlantsModel(
//       plantcategory: data['plants'][0]['source']['plant-category'],
//       plantname: data['plants'][0]['source']['ID1']['plant-name'],
//       category_icon: data['plants'][0]['source']['category-icon'],
//       category_id: data['plants'][0]['source']['category-id'],
//       id: data['plants'][0]['source']['ID1']['id'],
//     );
//   }
// }

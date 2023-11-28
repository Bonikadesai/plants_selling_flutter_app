//
// class JSONHelper {
//   JSONHelper._();
//
//   static final JSONHelper jsonHelper = JSONHelper._();
//
//   Future<List<PlantsModel>?> loadJsonData() async {
//     String data = await rootBundle.loadString("lib/resource/jsonData.json");
//
//     List decodedata = jsonDecode(data);
//
//     List<PlantsModel> plantsmodel =
//         decodedata.map((e) => PlantsModel.fromMap(data: e)).toList();
//
//     return plantsmodel;
//   }
// }
import 'package:plant_seling_app/model/plant_model.dart';
import 'package:sqflite/sqflite.dart';

import '../controller/json_controller.dart';

class JsonHelper {
  JsonHelper._();

  static final JsonHelper jsonHelper = JsonHelper._();

  Database? db;

  Future insertCategory() async {
    //await initDB();
    JsonDecodeController jsonDecodeController = JsonDecodeController();

    List<PlantModel> plants = await jsonDecodeController.loadJson();

    for (int i = 0; i < plants.length; i++) {
      String query1 =
          "INSERT INTO plants(category_id, category_name, category_icon, category_image) VALUES (? , ?, ?, ?);";
      List args1 = [
        plants[i].category_id,
        plants[i].plant_category,
        plants[i].category_icon,
        plants[i].plants,
      ];

      int res = await db!.rawInsert(query1, args1);
    }

    for (int i = 0; i < categories.length; i++) {
      for (int j = 0; j < categories[i].quotes.length; j++) {
        String query2 =
            "INSERT INTO quotes(quote_id, quote_category, quote, author, is_favorite) VALUES (? , ? , ? , ?, ?);";

        List args2 = [
          categories[i].quotes[j].id,
          categories[i].quotes[j].category,
          categories[i].quotes[j].quote,
          categories[i].quotes[j].author,
          categories[i].quotes[j].isFavorite,
        ];

        int res = await db!.rawInsert(query2, args2);
      }
    }
  }
}

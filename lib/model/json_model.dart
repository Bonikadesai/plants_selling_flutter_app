import 'package:plant_seling_app/model/plant_model.dart';

class JsonModel {
  String jsonData;
  List<PlantsModel> plant;

  JsonModel({
    required this.jsonData,
    required this.plant,
  });
}

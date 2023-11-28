import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:plant_seling_app/model/database_check_model.dart';

class DatabaseCheckController extends GetxController {
  DataBaseCheckModel dataBaseCheckModel =
      DataBaseCheckModel(isTableInserted: false);
  final getStorage = GetStorage();

  dataInserted() {
    dataBaseCheckModel.isTableInserted = true;

    getStorage.write("isTableInserted", dataBaseCheckModel.isTableInserted);
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../model/theme_model.dart';

final box = GetStorage();

class ThemeController extends GetxController {
  ThemeModel themeModel = ThemeModel(isdark: box.read('isDarkMode') ?? false);

  changeTheme() {
    box.write('isDarkMode', themeModel.isdark = !themeModel.isdark);
    (themeModel.isdark)
        ? Get.changeTheme(ThemeData.dark(useMaterial3: true))
        : Get.changeTheme(ThemeData.light(useMaterial3: true));
    update();
  }
}

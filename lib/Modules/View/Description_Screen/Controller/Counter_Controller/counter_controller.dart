import 'package:get/get.dart';

import '../../Model/Counter_Moodel/counter_model.dart';

class CounterController extends GetxController {
  CounterModal counterModal = CounterModal(counter: 1);

  void increment() {
    counterModal.counter++;
    update();
  }

  void decrement() {
    if (counterModal.counter <= 0) {
      Get.snackbar("Plants App", "Can not be less than zero");
    } else {
      counterModal.counter--;
    }

    update();
  }
}

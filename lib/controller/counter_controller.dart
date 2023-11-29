import 'package:get/get.dart';

import '../model/counter_model.dart';

class CounterController extends GetxController {
  CounterModal counterModal = CounterModal(counter: 0);

  void increment() {
    counterModal.counter++;
    update();
  }

  void decrement() {
    counterModal.counter--;
    update();
  }
}

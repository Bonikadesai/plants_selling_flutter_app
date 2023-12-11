import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Cart_Screen/Controller/Cart_Controller/cart_controller.dart';
import '../../Cart_Screen/Model/Cart_Model/cart_model.dart';
import '../Controller/Counter_Controller/counter_controller.dart';

class Descripation_screen extends StatelessWidget {
  const Descripation_screen({super.key});

  @override
  Widget build(BuildContext context) {
    Map data = Get.arguments as Map;
    CartController cartController = Get.put(CartController());
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          data['plant-name'],
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff41825F),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    data['plant-image'],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Text(
                      "Scientific Name: ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      data['details']['scientific-name'],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xff707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Categories: ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${data['details']['category']}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff707070),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Tags: ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${data['details']['tags']}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff707070),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Text(
                      "Dimensions: ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "${data['details']['dimensions']}",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Color(0xff707070),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Watering: ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${data['details']['watering']}",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff707070),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    data['price'],
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    data['old-price'],
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff707070),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    data['discount'],
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xff41825F),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Quantity",
                            style: TextStyle(fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {
                              counterController.increment();
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffC4C4C4),
                              ),
                              child: const Icon(Icons.add),
                            ),
                          ),
                          GetBuilder<CounterController>(
                            builder: (countercontroller) => Text(
                              "${countercontroller.counterModal.counter}",
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              counterController.decrement();
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffC4C4C4),
                              ),
                              child: const Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data['details']['description'],
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff707070),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  CartModel cartmodel = CartModel(
                    id: data['id'],
                    scientificName: data['plant-name'],
                    plantImage: data['plant-image'],
                    quantity: data['quality'],
                    // dimension: data['dimensions'],
                    // category: data['category'],
                    price: data['price'],
                  );
                  log("${data['id']}");
                  log("${data['plant-name']}");
                  log("${data['plant-image']}");
                  log("${data['quality']}");
                  // log("${data['dimensions']}");
                  // log("${data['category']}");
                  log("${data['price']}");
                  cartController.addToCart(cartModel: cartmodel);
                  Get.toNamed(
                    '/Cart_screen',
                  );
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff41825F),
                  ),
                  child: const Center(
                    child: Text(
                      "Add to cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

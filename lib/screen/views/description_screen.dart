import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/counter_controller.dart';

class Descripation_screen extends StatefulWidget {
  const Descripation_screen({super.key});

  @override
  State<Descripation_screen> createState() => _Descripation_screenState();
}

class _Descripation_screenState extends State<Descripation_screen> {
  @override
  Widget build(BuildContext context) {
    Map data = Get.arguments as Map;
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          data['plant-name'],
          style: TextStyle(
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      "Scientific Name: ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      data['details']['scientific-name'],
                      style: TextStyle(
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
                  Text(
                    "Categories: ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${data['details']['category']}",
                    style: TextStyle(
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
                    "Tags: ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${data['details']['tags']}",
                    style: TextStyle(
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
                    Text(
                      "Dimensions: ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "${data['details']['dimensions']}",
                      style: TextStyle(
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
                  Text(
                    "Watering: ",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${data['details']['watering']}",
                    style: TextStyle(
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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    data['old-price'],
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff707070),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    data['discount'],
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff41825F),
                    ),
                  ),
                  SizedBox(
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
                          Text(
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
                                color: Color(0xffC4C4C4),
                              ),
                              child: Icon(Icons.add),
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
                                color: Color(0xffC4C4C4),
                              ),
                              child: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
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
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff707070),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

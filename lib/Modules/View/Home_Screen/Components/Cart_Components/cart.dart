import 'package:flutter/material.dart';

class Cart_screen extends StatelessWidget {
  const Cart_screen({super.key});

  @override
  Widget build(BuildContext context) {
    //CartModel plant = Get.arguments as CartModel;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff41825F),
        title: const Text(
          "Shopping Cart",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "1 Items",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 205,
                ),
                const Text(
                  "Remove",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Color(0xffAFAFAF),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/flower/African_Lily.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Rudbeckia hirta",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff757272),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: const Color(0xff325A3E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text.rich(
              TextSpan(
                text: "Dimension: ",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff757272),
                ),
                children: [
                  TextSpan(
                    text: " 6inch (15 cm) h x 4inch (10cm)w",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Text.rich(
              TextSpan(
                text: "Categories: ",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff757272),
                ),
                children: [
                  TextSpan(
                    text: " Plants, indoor, outdoor",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total shipping",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff757272),
                  ),
                ),
                Text(
                  "Free",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub total",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff757272),
                  ),
                ),
                Text(
                  " \$10",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  " \$10",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff325A3E),
              ),
              child: const Center(
                child: Text(
                  "Payment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page_View_Screen extends StatelessWidget {
  const Page_View_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
      ),
      body: IntroductionScreen(
        pages: [
          //bangluru
          PageViewModel(
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://mediaim.expedia.com/destination/1/e045959c26a0e493d092ac04edf7e415.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Bangluru",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.britannica.com/91/110191-050-7BCFD56B/Victoria-Memorial-Hall-Kolkata-India.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Kolkata",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://live.staticflickr.com/7220/7319824942_b984306ab9_b.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Chennai",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://static.toiimg.com/photo/msid-25045273,width-96,height-65.cms",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Hydrabad",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://media.timeout.com/images/105241451/image.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Mumbai",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2021/07/pune-1625115438.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Pune",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Sheth_Hutheesinh_Temple.jpg/1200px-Sheth_Hutheesinh_Temple.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Ahemdabad",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.britannica.com/53/176353-050-5B854179/Harmandir-Sahib-Amritsar-Punjab-India.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Punjab",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://static.toiimg.com/thumb/95150061/kashmir.jpg?width=1200&height=900",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "J & K",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            title: "Select Your City",
          ),
          //jaipur
          PageViewModel(
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.squarespace-cdn.com/content/v1/5a3bb03b4c326d76de73ddaa/669a47b5-f41b-4300-b910-17cb3a5bb594/The+Common+Wanderer-2155-2.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Jaipur",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://ihplb.b-cdn.net/wp-content/uploads/2021/01/Rumi_Darwaja-lucknow-750x430.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Lucknow",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/a/a7/Kanpur_Central_Railway_Station_Building_%28Cant_Side_View%29.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Kanpur",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.britannica.com/69/142569-050-44EF7351/stupa-Deekshabhoomi-Nagpur-Maharashtra-India.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Nagpur",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://static.toiimg.com/thumb/msid-85835914,width-748,height-499,resizemode=4,imgsize-226138/.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Indore",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.skyscrapercenter.com/uploads/Thane_Hiranandani-Estate-_(CC__BY-SA)Ykrishna1210121-090145.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Thane",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://www.treebo.com/blog/wp-content/uploads/2022/11/Header-image-Bhopal.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Bhopal",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/d/d6/Patna_Golghar_2.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Patna",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/41/e6/b1/laxmi-vilas-palace.jpg?w=700&h=-1&s=1",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Vadodara",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            title: "Select Your City",
          ),
          //ludhiyana
          PageViewModel(
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLzBnhfulaFuUXvPXfCFaawtQZ35DqLzUN0Q&usqp=CAU",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Ludhiana",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://apollo-singapore.akamaized.net/v1/files/m1bh04ip06om1-IN/image",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Gaziabad",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.britannica.com/86/170586-050-AB7FEFAE/Taj-Mahal-Agra-India.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Agra",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/a2/c0/ca/falls.jpg?w=600&h=400&s=1",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Nashik",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://contactinformation.in/wp-content/uploads/2018/03/rajkot_bus_stand1.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Rajkot",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.nativeplanet.com/img/2017/04/27-1493268994-vasai-fort.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Vasai",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://www.thecultureist.com/wp-content/uploads/2014/07/dal-lake-e1404744571588.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Srinagar",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/originals/ba/82/65/ba8265e54a51ca457fd9c4c3da2cf620.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Amritsar",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/5e/c0/46/drone-shot-of-the-valley.jpg?w=600&h=500&s=1",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Ranchi",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            title: "Select Your City",
          ),
          //jodpur
          PageViewModel(
            bodyWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/9/99/Mehrangarh_Fort_sanhita.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Jodhpur",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/d/d2/Municipal_Corporation_Raipur_%28White_House%29.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Raipur",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://assets-news.housing.com/news/wp-content/uploads/2022/08/28023615/KOTA-FEATURE-compressed.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Kota",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://www.mistay.in/travel-blog/content/images/size/w2000/2018/03/chandigarh.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Chandigardh",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.funcityboond.com/assets/images/5%20img.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Bareilly",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/2/29/DLF_Gateway_Tower.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Gurgaon",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Home_Screen');
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/2/24/AMU_Masjid_-_panoramio.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Aligardh",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://t4.ftcdn.net/jpg/05/40/30/71/360_F_540307170_qg8R8Seug9NYJzL7FpbBuW5St0lIyAvv.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Noida",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/Home_Screen');
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202307/ezgif-sixteen_nine_394.jpg?size=948:533",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 20,
                                width: 100,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Surat",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            title: "Select Your City",
          ),
        ],
        done: Text("Skip"),
        showNextButton: false,
        onDone: () async {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setBool("isIntrovisited", true);
          Navigator.of(context).pushNamed('/Home_Screen');
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Gardening_Screen extends StatefulWidget {
  const Gardening_Screen({super.key});

  @override
  State<Gardening_Screen> createState() => _Gardening_ScreenState();
}

class _Gardening_ScreenState extends State<Gardening_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gardening"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: Color(0xffEAFBDF),
                    image: DecorationImage(
                      image:
                          AssetImage("assets/category_flower/wildflower.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 20,
                        width: 120,
                        color: Color(0xffEAFBDF),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "Wildflower",
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
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
                        width: 150,
                        color: Colors.white.withOpacity(0.5),
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
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
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
                        width: 150,
                        color: Colors.white.withOpacity(0.5),
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
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
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
                        width: 150,
                        color: Colors.white.withOpacity(0.5),
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
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
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
                        width: 150,
                        color: Colors.white.withOpacity(0.5),
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
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
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
                        width: 150,
                        color: Colors.white.withOpacity(0.5),
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
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 150,
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
                        width: 150,
                        color: Colors.white.withOpacity(0.5),
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
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

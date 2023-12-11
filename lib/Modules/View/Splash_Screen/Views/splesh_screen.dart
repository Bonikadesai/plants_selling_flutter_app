import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Splesh_Screen extends StatefulWidget {
  const Splesh_Screen({super.key});

  @override
  State<Splesh_Screen> createState() => _Splesh_ScreenState();
}

class _Splesh_ScreenState extends State<Splesh_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Get.toNamed('/Second_Screen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'P  L  A  N  T  S',
              style: GoogleFonts.getFont(
                'Roboto',
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xff41825F),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const CircleAvatar(
            radius: 120,
            foregroundImage:
                AssetImage("lib/assets/gif/Animation1698403886486.gif"),
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff41825F),
            ),
            onPressed: () {
              Get.toNamed('/Second_Screen');
            },
            child: const Text(
              "Start Exploring",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({super.key});

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Transform.rotate(
            angle: pi / 4,
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/secondpage.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Welcome Plants',
            style: GoogleFonts.getFont(
              'Rochester',
              fontSize: 50,
              color: const Color(0xff41825F),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                Get.toNamed('/Login_Screen');
              }, // Handle your callback
              child: Ink(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffE1E5E2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xff41825F),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {
                Get.toNamed('/SignUp_Screen');
              }, // Handle your callback
              child: Ink(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff41825F),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Color(0xffE1E5E2),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

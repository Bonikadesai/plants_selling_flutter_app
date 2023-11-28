import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_seling_app/screen/plants_components/gardening_screen.dart';
import 'package:plant_seling_app/screen/plants_components/plants_screen.dart';
import 'package:plant_seling_app/screen/plants_components/seeds.dart';
import 'package:plant_seling_app/screen/views/details_screen.dart';
import 'package:plant_seling_app/screen/views/home_screen.dart';
import 'package:plant_seling_app/screen/views/login_screen.dart';
import 'package:plant_seling_app/screen/views/page_view.dart';
import 'package:plant_seling_app/screen/views/phone_otp_screen.dart';
import 'package:plant_seling_app/screen/views/second_screen.dart';
import 'package:plant_seling_app/screen/views/signup_screen.dart';
import 'package:plant_seling_app/screen/views/splesh_screen.dart';
import 'package:plant_seling_app/screen/views/verify_otp_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      title: 'Plant Selling',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      getPages: [
        GetPage(
          name: '/',
          page: () => Splesh_Screen(),
        ),
        GetPage(
          name: '/Second_Screen',
          page: () => Second_Screen(),
        ),
        GetPage(
          name: '/Login_Screen',
          page: () => Login_Screen(),
        ),
        GetPage(
          name: '/SignUp_Screen',
          page: () => SignUp_Screen(),
        ),
        GetPage(
          name: '/Home_Screen',
          page: () => Home_Screen(),
        ),
        GetPage(
          name: '/phoneotp',
          page: () => const PhoneOTPScreen(),
        ),
        GetPage(
          name: '/otpverify_page',
          page: () => const VerifyOTPScreen(),
        ),
        GetPage(
          name: '/Page_View_Screen',
          page: () => const Page_View_Screen(),
        ),
        GetPage(
          name: '/gardening_screen',
          page: () => const Gardening_Screen(),
        ),
        GetPage(
          name: '/plant_screen',
          page: () => const Plants_Screen(),
        ),
        GetPage(
          name: '/seed_screen',
          page: () => const Seeds_Screen(),
        ),
        GetPage(
          name: '/Detail_Screen',
          page: () => const Details_Screen(),
        ),
      ],
    ),
  );
}

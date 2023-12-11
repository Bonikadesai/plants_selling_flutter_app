import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_seling_app/Modules/View/Description_Screen/Views/description_screen.dart';
import 'package:plant_seling_app/Modules/View/Details_Screen/Views/details_screen.dart';
import 'package:plant_seling_app/Modules/View/Home_Screen/Views/home_screen.dart';
import 'package:plant_seling_app/Modules/View/Login_Screen/Views/login_screen.dart';
import 'package:plant_seling_app/Modules/View/OTP_Screen/Verify_OTP_Screen/Views/verify_otp_screen.dart';
import 'package:plant_seling_app/Modules/View/Page_View_Screen/Views/page_view.dart';
import 'package:plant_seling_app/Modules/View/Payment_Screen/Views/payment_screen.dart';
import 'package:plant_seling_app/Modules/View/Second_Screen/Views/second_screen.dart';
import 'package:plant_seling_app/Modules/View/SignUP_Screen/Views/signup_screen.dart';
import 'package:plant_seling_app/Modules/View/Splash_Screen/Views/splesh_screen.dart';

import 'Modules/View/Cart_Screen/Views/cart_screen.dart';
import 'Modules/View/Home_Screen/Components/Category_Components/category.dart';
import 'Modules/View/Home_Screen/plants_components/plants_screen.dart';
import 'Modules/View/OTP_Screen/Phone_Otp_Screen/Views/phone_otp_screen.dart';
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
          name: '/plant_screen',
          page: () => const Plants_Screen(),
        ),
        GetPage(
          name: '/Detail_Screen',
          page: () => const Details_Screen(),
        ),
        GetPage(
          name: '/Category',
          page: () => const Category(),
        ),
        GetPage(
          name: '/Descripation_screen',
          page: () => const Descripation_screen(),
        ),
        GetPage(
          name: '/Cart_screen',
          page: () => const Cart_screen(),
        ),
        GetPage(
          name: '/Payment_screen',
          page: () => Payment_screen(),
        ),
      ],
    ),
  );
}

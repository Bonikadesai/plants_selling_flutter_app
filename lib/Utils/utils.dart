import 'package:flutter/material.dart';

final GlobalKey<FormState> signUpformkey = GlobalKey<FormState>();
final GlobalKey<FormState> signInformkey = GlobalKey<FormState>();

TextEditingController signupemailController = TextEditingController();
TextEditingController signuppasswordController = TextEditingController();

TextEditingController signinemailController = TextEditingController();
TextEditingController signinpasswordController = TextEditingController();
TextEditingController signinconfirmpasswordController = TextEditingController();

TextEditingController phoneController = TextEditingController();
TextEditingController otpController = TextEditingController();

String? email;
String? password;
String? signupEmail;
String? signupPassword;
String? signupConfirmPass;

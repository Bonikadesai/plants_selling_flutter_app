import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_seling_app/Modules/View/SignUP_Screen/Controller/Auth_Controller/auth_controller.dart';

import '../../../Utils/utils.dart';

class SignUp_Screen extends StatelessWidget {
  SignUp_Screen({super.key});

  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
      ),
      body: Form(
        key: signUpformkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //SizedBox(height: 80),
                Row(
                  children: [
                    const SizedBox(
                      width: 250,
                    ),
                    Transform.rotate(
                      angle: pi * 3 / 4,
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/assets/images/leaf.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                const Center(
                  child: Text(
                    "Create your new account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffA5AFA8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: signinemailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text("Email"),
                    hintText: "Enter email here...",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    signupEmail = value;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter email first...";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: signinpasswordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    label: Text("Password"),
                    hintText: "Enter password here...",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    signupPassword = value;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter password first...";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                TextFormField(
                  controller: signinconfirmpasswordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    label: Text("Confirm password"),
                    hintText: "Enter password here...",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    signupConfirmPass = value;
                  },
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please enter confirm password...";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      authController.signUp(
                          email: signupEmail!, password: signupPassword!);
                      Get.offNamed('/Page_View_Screen');
                      Get.snackbar(
                        "SUCCESSFULLY",
                        "Create Account Successfully with Email..",
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
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        foregroundImage:
                            const AssetImage("lib/assets/images/google.jpg"),
                        child: OutlinedButton.icon(
                          onPressed: () async {
                            User? res = await authController.signInWithGoogle();
                            if (res != null) {
                              Get.offNamed('/Page_View_Screen', arguments: res);
                              Get.snackbar(
                                "SUCCESSFULLY",
                                "Login Successfully with Google😊..",
                              );
                            } else {
                              Get.snackbar("FAILURE", "Login Failed!!",
                                  backgroundColor: Colors.red);
                            }
                          },
                          icon: const Icon(Icons.supervised_user_circle),
                          label: const Text("Sign in with google"),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        foregroundImage:
                            const AssetImage("lib/assets/images/user.png"),
                        child: OutlinedButton(
                          onPressed: () async {
                            User? res =
                                await authController.signInAnonymously();
                            if (res != null) {
                              Get.offNamed('/Page_View_Screen', arguments: res);
                              Get.snackbar(
                                "SUCCESSFULLY",
                                "Login Successfully with Anonymous😊..",
                              );
                            } else {
                              Get.snackbar("FAILURE", "Login Failed!!",
                                  backgroundColor: Colors.red);
                            }
                          },
                          child: const Text("Sign in Anonymous"),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed('/phoneotp');
                        },
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          foregroundImage:
                              AssetImage("lib/assets/images/wp.png"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offNamed('/login');
                  },
                  child: const Text.rich(
                    TextSpan(
                      text: "Don't have an account ?? ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Log In",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff41825F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

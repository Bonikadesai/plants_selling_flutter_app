import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  final RxString signUpEmail = ''.obs;
  final RxString signUpPassword = ''.obs;
  final RxString signUpConfirmPass = ''.obs;
  final RxString email = ''.obs;
  final RxString password = ''.obs;

  final Rx<GetBar?> snackBar = Rx<GetBar?>(null);
  //FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();
  String verificationId = "";

  Future<User?> signInAnonymously() async {
    UserCredential userCredential = await firebaseAuth.signInAnonymously();
    return userCredential.user;
  }

  Future<User?> signUp(
      {required String email, required String password}) async {
    UserCredential userCredential =
        await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  Future<Map<String, dynamic>> signInWithEmail(
      {required String email, required String password}) async {
    Map<String, dynamic> res = {};
    try {
      UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      res['user'] = userCredential.user;
    } on FirebaseAuthException catch (e) {
      res['error'] = e.code;
    }
    return res;
  }

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    var credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    UserCredential userCredential =
        await firebaseAuth.signInWithCredential(credential);
    return userCredential.user;
  }

  Future<void> fetchOTP(String phoneNumber) async {
    await firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await firebaseAuth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print("Invalid phone number");
          // Handle the error using Get.snackbar or other methods
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        this.verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<void> verifyOTP(String smsCode) async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,
    );

    UserCredential userCredential =
        await firebaseAuth.signInWithCredential(phoneAuthCredential);

    if (userCredential.user != null) {
      // Navigate to the desired screen
      // Get.toNamed('/');
      // Display success snackbar
      // Get.snackbar("SUCCESSFULLY LOGIN", "${userCredential.user}", backgroundColor: Colors.green);
    }
  }

  Future<void> signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    try {
      verifyOTP(phoneAuthCredential.smsCode!);

      final authCredential =
          await firebaseAuth.signInWithCredential(phoneAuthCredential);
      if (authCredential.user != null) {
        // Get.toNamed('/');
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  void signOut() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
  }
}

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:plant_seling_app/screen/views/signup_screen.dart';
//
// import '../screen/views/home_screen.dart';
//
// class Auth_controller extends GetxController {
//   static Auth_controller get instance => Get.find();
//
//   final auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;
//
//   @override
//   void onReady() {
//     firebaseUser = Rx<User?>(auth.currentUser);
//     firebaseUser.bindStream(auth.userChanges());
//     ever(firebaseUser, setInitialScreen);
//   }
//
//   setInitialScreen(User? user) {
//     user == null
//         ? Get.offAll(() => SignUp_Screen())
//         : Get.offAll(() => Home_Screen());
//   }
//
//   Future<void> createUserWithEmailAndPassword(
//       String email, String password) async {
//     try {
//       await auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       firebaseUser.value != null
//           ? Get.offAll(() => Home_Screen())
//           : Get.to(() => SignUp_Screen());
//     } on FirebaseAuthException catch (e) {}
//   }
// }

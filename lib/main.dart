import 'package:ecommerce_firebase_flutter/screens/login_screen.dart';
import 'package:ecommerce_firebase_flutter/screens/main_screen.dart';
import 'package:ecommerce_firebase_flutter/screens/product_screen.dart';
import 'package:ecommerce_firebase_flutter/screens/registerscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // qrCode.make();

  FirebaseApp app = await Firebase.initializeApp();
  // FirebaseApp defaultApp = Firebase.app();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffBF007A),
        primaryColorDark: Color(0xffBF007A),
        accentColor: Color(0xffFF4081)
      ),
      routes: {
        '/' : (_) => MainScreen(),
        LoginScreen.routName : (_) => LoginScreen(),
        RegisterScreen.routName : (_) => RegisterScreen(),
      },
    );
  }
}

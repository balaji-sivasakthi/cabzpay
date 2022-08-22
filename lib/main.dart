// import 'package:cabzpay/screens/auth/login_screen.dart';
import 'package:cabzpay/screens/auth/login_screen.dart';
import 'package:cabzpay/screens/auth/otp_screen.dart';
import 'package:cabzpay/screens/home/home_screen.dart';
import 'package:cabzpay/screens/onboarding_screen.dart';
import 'package:cabzpay/screens/payment/payment_failer_screen.dart';
import 'package:cabzpay/screens/payment/payment_success_screen.dart';
import 'package:cabzpay/screens/profile/profile_screen.dart';
import 'package:cabzpay/screens/welcome_screen.dart';
import 'package:cabzpay/widgets/history_card.dart';
import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Home",
    home: HomePage(),
  ));
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AuthScreen();
  }
}
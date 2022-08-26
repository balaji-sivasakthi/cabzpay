// import 'package:cabzpay/screens/auth/login_screen.dart';
import 'package:cabzpay/screens/auth/login_screen.dart';
import 'package:cabzpay/screens/auth/otp_screen.dart';
import 'package:cabzpay/screens/history/transaction_history.dart';
import 'package:cabzpay/screens/home_screen.dart';
import 'package:cabzpay/screens/onboarding_screen.dart';
import 'package:cabzpay/screens/packages/packages_screen.dart';
import 'package:cabzpay/screens/payment/payment_failer_screen.dart';
import 'package:cabzpay/screens/payment/payment_success_screen.dart';
import 'package:cabzpay/screens/profile/profile_screen.dart';
import 'package:cabzpay/screens/welcome_screen.dart';
import 'package:cabzpay/widgets/history_card.dart';
import "package:flutter/material.dart";
void  main() async{
  
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
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

void _navigateToHome()async{
    await Future.delayed(Duration(microseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
}
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}
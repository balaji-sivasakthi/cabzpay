import 'package:cabzpay/pages/onboarding_screen.dart';
import "package:flutter/material.dart";

void  main() {
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
    return OnBoardingScreen();
  }
}
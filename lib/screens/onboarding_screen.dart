import 'package:cabzpay/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();
  var _label = "Next";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              _label = (index == 2) ? "Continue" : "Next";
            });
          },
          controller: _controller,
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/onboarding-2.svg',
                      width: 400,
                      height: 400,
                    ),
                    Text(
                      "Spend your money smarter",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      "Never overspend your money again with smart budgeting feature.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/onboarding-1.svg',
                        width: 400, height: 400),
                    Text(
                      "Spend your money smarter",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      "Never overspend your money again with smart budgeting feature.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/onboarding-3.svg',
                        width: 400, height: 400),
                    Text(
                      "Spend your money smarter",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      "Never overspend your money again with smart budgeting feature.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                )),
          ],
        ),
        Container(
          padding: EdgeInsets.all(30),
          alignment: Alignment(0, .9),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmoothPageIndicator(
                  effect: ExpandingDotsEffect(
                      activeDotColor: Colors.blue,
                      dotColor: Color.fromARGB(153, 1, 1, 49)),
                  controller: _controller,
                  count: 3),
              GestureDetector(
                onTap: () {
                  if (_label != "Continue") {
                    _controller.nextPage(
                        duration: Duration(microseconds: 1000),
                        curve: Curves.ease);
                  } else {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => AuthScreen()));
                  }
                },
                child: Container(
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text(
                      _label,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

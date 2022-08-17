import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: const Center(child: Text(
                "Cabzpay",  
                style: TextStyle(color: Color.fromRGBO(55, 132, 251, 1),fontSize:48,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
              )),
            ),
          
            Container(
              alignment: Alignment(0,.9),
              child: Image.asset('assets/images/ls.png',width: 150,height: 100,))
          ],
        ),
      ),
    );
  }
}
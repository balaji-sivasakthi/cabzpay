import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentSucessScreen extends StatefulWidget {
  const PaymentSucessScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSucessScreen> createState() => _PaymentSucessScreenState();
}

class _PaymentSucessScreenState extends State<PaymentSucessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back)),
      body: Container(
        padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Color.fromRGBO(2, 41, 100, 1)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [  
            Stack(
              clipBehavior: Clip.none,
              children: [
              Positioned(child: Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child:Container(child: Center(child: Text("Hello"),)),
              )),
              Positioned(
                top: 400/2,
                left: -50,
                child: Container(
                width: 70,
                height: 70,
               decoration: BoxDecoration(
                color: Color.fromRGBO(2, 41, 100, 1),
                borderRadius: BorderRadius.circular(100)
                ),
              )),
              Positioned(
                top: 400/2,
                right: -50,
                child: Container(
                width: 70,
                height: 70,
               decoration: BoxDecoration(
                color: Color.fromRGBO(2, 41, 100, 1),
                borderRadius: BorderRadius.circular(100)
                ),
              )),
              Positioned(
                top: -50,
                left: 100,
                child: Container(
                width: 150,
                height: 150,
               decoration: BoxDecoration(
                color: Color.fromRGBO(55, 132, 251, .2),
                borderRadius: BorderRadius.circular(100)
                ),
              )), Positioned(
                top: -30,
                left: 125,
                child: Container(
                  child: Center(child: Icon(Icons.check,color: Colors.white,size: 48,)),
                width: 100,
                height: 100,
               decoration: BoxDecoration(
                 color: Color.fromRGBO(55, 132, 251, 1),
                borderRadius: BorderRadius.circular(100)
                ),
              ))
            ],),
            Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      "Back to home",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
          ],),
      ),
    );
  }
}
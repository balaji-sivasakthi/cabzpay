import 'package:cabzpay/screens/payment/payment_failer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          backgroundColor: Color.fromRGBO(2, 41, 100, 1),
          actions: [
            Icon(
              Icons.print_outlined,
              size: 32,
            )
          ],
          leading: Icon(
            Icons.arrow_back,
            size: 32,
          )),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Color.fromRGBO(2, 41, 100, 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        
                          margin: EdgeInsets.only(top: 130),
                          child: Column(
                            children: [
                              Text(
                                "Great!",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 24),
                              ),
                              Text(
                                "Payment Success",
                                style: TextStyle(
                                    fontSize: 28, fontFamily: "Poppins"),
                              ),
                              Text(
                                "Below is your transfer summary",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 99, 99, 99),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                          Text("-",style: TextStyle(fontSize: 28,color: Colors.grey),),
                      
                          
                        ],)),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 231, 231, 231)),
                        margin: EdgeInsets.all(40),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.brown.shade800,
                              child: const Text('BS'),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Balaji Sivasakthi"),
                                  Text("123345567")
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                        
                              children: [
                                 Text(
                        "Total Amount",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 98, 240, 1),
                            fontSize: 16,
                            fontFamily: "Poppins"),
                      ),Text(
                        "Rs.200",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 98, 240, 1),
                            fontSize: 16,
                            fontFamily: "Poppins"),
                      ),
                              ],
                            ),)
                    ],
                  )),
                )),
                Positioned(
                    top: 400 / 2,
                    left: -50,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(2, 41, 100, 1),
                          borderRadius: BorderRadius.circular(100)),
                    )),
                Positioned(
                    top: 400 / 2,
                    right: -50,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(2, 41, 100, 1),
                          borderRadius: BorderRadius.circular(100)),
                    )),
                Positioned(
                    top: -55,
                    left: 115,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(55, 132, 251, .2),
                          borderRadius: BorderRadius.circular(100)),
                    )),
                Positioned(
                    top: -30,
                    left: 140,
                    child: Container(
                      child: Center(
                          child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 48,
                      )),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(55, 132, 251, 1),
                          borderRadius: BorderRadius.circular(100)),
                    ))
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PaymentFailureScreen()));
              },
              child: Container(
                height: 50,
                child: Center(
                  child: Text(
                    "Back to home",
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
            ),
          ],
        ),
      ),
    );
  }
}

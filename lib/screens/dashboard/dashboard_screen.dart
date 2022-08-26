import 'dart:ffi';

import 'package:cabzpay/widgets/custom_bottom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
     final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Moring"),
                    Text(
                      "Balaji Sivasathi",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                CircleAvatar(
                  
                  backgroundColor: Color.fromARGB(255, 0, 0, 5),
                  child: const Text('BS'),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            
                              Text("STB Number : "
                                "76254567189",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins"),
                                      ),
                                      Text(
                                        "Rs.1200",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: "Poppins"),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cabzpay",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontFamily: "Poppins"),
                                  ),
                                ],
                              )
                            ]),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: _width - (_width / 10),
                        height: 200,
                        decoration: BoxDecoration(
                        boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 8, 1, 76).withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 10,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              end: Alignment.topLeft,
                              begin: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 1, 6, 56),
                              Color.fromARGB(255, 0, 54, 135)]),
                      ),
                      ))
                  ],
                )),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
               
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last Recharge",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 98, 240, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                      Text(
                        "Expiry Date",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 98, 240, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins"),
                      ),
                      
                    ],
                  ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "3/08/2022",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 16, 40),
                            fontSize: 16,
                            fontFamily: "Poppins"),
                      ),
                      Text(
                        "3/09/2022",
                        style: TextStyle(
                              color: Color.fromARGB(255, 0, 16, 40),
                            fontSize: 16,
                            fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text(
                        "Current Month Bill",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 98, 240, 1),
                            fontSize: 16,
                            fontFamily: "Poppins"),
                      ),
                       Text(
                        "Rs.189",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 98, 240, 1),
                            fontSize: 16,
                            fontFamily: "Poppins"),
                      ),
                  ],)
                  ,
                ],
              ),
            ),
           Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      "Pay Now",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
          
          ]),
        );
  }
}

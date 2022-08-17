import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {},
                child: Icon(Icons.home),
              ),
              MaterialButton(onPressed: () {}, child: Icon(Icons.history)),
              MaterialButton(onPressed: () {}, child: Icon(Icons.payment)),
              MaterialButton(
                onPressed: () {},
                child: Icon(Icons.person_outlined),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
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
                  backgroundColor: Colors.brown.shade800,
                  child: const Text('BS'),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 60),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -30,
                      left: 30,
                      child: Container(
                        width: _width - (_width / 6),
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(220, 223, 254, 1)),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      left: 10,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: _width - (_width / 8),
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(5, 98, 240, 1)),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.all(30),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "BALAJI SIVASAKTHI",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins"),
                              ),
                              Text(
                                "**** **** 1234",
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
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins"),
                                      ),
                                      Text(
                                        "Rs.1200",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: "Poppins"),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Cabzpay",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Poppins"),
                                  ),
                                ],
                              )
                            ]),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: _width - (_width / 10),
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(0, 95, 175, 1)),
                      ),
                    )
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
                            color: Color.fromRGBO(5, 98, 240, 1),
                            fontSize: 16,
                            fontFamily: "Poppins"),
                      ),
                      Text(
                        "3/09/2022",
                        style: TextStyle(
                            color: Color.fromRGBO(5, 98, 240, 1),
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
        ),
      ),
    );
  }
}

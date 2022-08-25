import 'dart:collection';

import 'package:cabzpay/models/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
              Text("Welcome Back!",style: TextStyle(fontSize:28)),
         
            ]),  
            SvgPicture.asset("assets/images/auth.svg"),
            Container(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding:EdgeInsets.symmetric(vertical:8.0),child: Text("Enter STB Number")),
               TextField(
                keyboardType: TextInputType.number,
               onChanged: ((value) => setState(() {
                 
               })),
                inputFormatters: [],
                decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.live_tv),
                    border: OutlineInputBorder(),
                    hintText: "Enter STB Number"
                  
                  ),), 
               
             Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(child: Text("Get OTP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
              decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ],
            ),)
          ],
        ),
      ),
    ));
  }
}
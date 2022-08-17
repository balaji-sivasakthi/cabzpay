import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:Icon(Icons.arrow_back,color:Colors.black)
          
        ),
        body:Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  
                  child: Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                  "Verify Code",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text("Please enter the code")
                  ],
                ),),

                Container(
                  child: Column(children: [
Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Container(
                    width: 60,
                    height: 100,
                    child: TextField( 
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        counterText:"",
                        border: OutlineInputBorder()
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                   Container(
                    width: 60,
                    height: 100,
                    child: TextField( 
                      keyboardType: TextInputType.number,
                      maxLength: 1,

                       decoration: InputDecoration(
                        counterText:"",
                        border: OutlineInputBorder()
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                   Container(
                    width: 60,
                    height: 100,
                    child: TextField( 
                      keyboardType: TextInputType.number,
                      maxLength: 1,

                       decoration: InputDecoration(
                        counterText:"",
                        border: OutlineInputBorder()
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                   Container(
                    width: 60,
                    height: 100,
                    child: TextField( 
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                       decoration: InputDecoration(
                        counterText:"",
                        border: OutlineInputBorder()
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                  ],
                ),
                ),Container(

                  child:Column(
                  
                    children: [
                      Text("Resend Code in 09:12"),
                    Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
              decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                    ],
                  )
                )
                  ],),
                ),
                
              ],
          ),
        )
        );
  }
}

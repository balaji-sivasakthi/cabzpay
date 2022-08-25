import 'package:cabzpay/widgets/history_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
    
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: Text("C"),
                            backgroundColor: Colors.blue,
                          ),
                          Text(
                            "Village Pack",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          Text(
                            'Rs.500',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        "3:02 PM  Aug 22, 2021",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                height: 140,
                width: _width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(0, 4, 40, 1)),
              )
            ],
          ),
        )));
  }
}

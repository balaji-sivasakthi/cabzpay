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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("History", style: TextStyle(color: Colors.black)),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
    
        body: SafeArea(
          
            child: Padding(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              HistoryCard(),
              HistoryCard(),
              HistoryCard(),
              HistoryCard(),
              HistoryCard(),
              HistoryCard(),
              HistoryCard(),
              HistoryCard(),
            ],
          ),
        )));
  }
}

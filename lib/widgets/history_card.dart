import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HistoryCard extends StatefulWidget {
  const HistoryCard({Key? key}) : super(key: key);

  @override
  State<HistoryCard> createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
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
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(0, 4, 40, 1)),
              );
  }
}
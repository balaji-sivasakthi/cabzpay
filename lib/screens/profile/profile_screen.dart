import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Profile", style: TextStyle(color: Colors.black)),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 0, 123, 255),
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
                  child: ,
                )
              ],
            )),
      ),
    );
  }
}

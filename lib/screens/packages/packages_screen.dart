import 'package:cabzpay/widgets/package_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PackagesScreen extends StatefulWidget {
  const PackagesScreen({Key? key}) : super(key: key);

  @override
  State<PackagesScreen> createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Packages", style: TextStyle(color: Colors.black)),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
        body: ListView(
      children: [
      
        PackageCard(),
        PackageCard(),
        PackageCard(),
        PackageCard(),
        PackageCard(),
      ],
    ));
  }
}

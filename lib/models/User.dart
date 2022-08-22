import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
class User {
  String id ;
  final String name;
  User({
    this.id="",
    required this.name,
  });

  Map<String,dynamic> toJson()=>{
    'id':id,
    'name':name
  };

  static User fromJson(Map<String,dynamic>json)=>User(
    id:json['id'],
    name:json['name']
  );

}
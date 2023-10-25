import 'package:flutter/material.dart';

class DataStateless extends StatelessWidget {
  String name;
  String? location;
  int  age;
  int phone;
  String img;
  DataStateless ({super.key, required this.name,  this.location, required this.age, required this.phone, required this.img,});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

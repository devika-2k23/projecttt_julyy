import 'package:flutter/material.dart';

class DataStatefull extends StatefulWidget {
  String name;
  String? location;
  int  age;
  int phone;
  String img;
  DataStatefull({super.key, required this.name, this. location, required this. age, required this. phone, required this.img});

  @override
  State<DataStatefull> createState() => _DataStatefullState();
}
class _DataStatefullState extends State<DataStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(widget.img,height: 100,),
            Text("Name:${widget.name}",style: TextStyle(fontSize: 30),),
            Text("Location:${widget.location}",style: TextStyle(fontSize: 20),),
            Text('Age:${widget.age}',style: TextStyle(fontSize: 15),),
            Text('image:${widget.img}',style: TextStyle(fontSize: 12),),
            Text('phone:${widget.phone}',style: TextStyle(fontSize: 10),),
          ],
        ),
      ),
    );
  }
}

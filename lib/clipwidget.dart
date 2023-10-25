import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(home:Clipwidget(),));
}
class Clipwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
         ///ClipRect
            ClipRect(
              child: Container(
                child: Align(
                  widthFactor: .4,
                  heightFactor: .4,
                  alignment: Alignment.center,
                  child: Image.network('https://images.unsplash.com/photo-1695565469631-8e636d3b993f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80'),
                ),
              ),
            ),
            SizedBox(
              height: 10,),
            ClipRRect(
              borderRadius: BorderRadius.circular(980),
              child: Container(
                // height: 200,
                // width: 200,
                child: Image.network("https://images.unsplash.com/photo-1496711914408-534a237d7e26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
              ),
            ),
            SizedBox(height: 20,),
            ClipOval(
              child: Image.network("https://images.unsplash.com/photo-1696519294382-77ec26aa063c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2072&q=80"),
            ),
            SizedBox(height: 20.0,),
            ClipPath(
              clipper: OctagonalClipper(),
              child: Container(
                height: 220,
                color: Colors.red,
                child: Center(child: Text("OctagonalClipper()")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

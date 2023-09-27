import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Stateful_Login.dart';

void main(){
  runApp(MaterialApp(
    home: Splash2(),

  ));
}

class Splash2 extends StatefulWidget{
  @override
  State<StatefulWidget>createState() => Splash2State();
}

class Splash2State extends State {
  @override
  void initState() {
    Timer(Duration(seconds:4),() {
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>Login_stateful()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //color: Colors.white12
          // image: DecorationImage(
          //   fit:BoxFit.cover,
          //  image:NetworkImage("https://plus.unsplash.com/premium_photo-1694074422763-9ddc6d3ae085?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80")),

        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              // Icon(
              //   Icons.favorite,
              //   size:80,
              //   color: Colors.red,
              // ),
              // Image(image: AssetImage("assets/icons/Iconarchive-Dog-Breed-Rottweiler.512.png")),
              Image(image: NetworkImage("https://cdn1.iconfinder.com/data/icons/logotypes/32/windows-512.png")),
              Text(
                "MY APP",
                style: GoogleFonts.acme(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
              // style: TextStyle(
              //   fontSize: 30,
              //   color: Colors.white,
              //   fontWeight: FontWeight.bold),
              // )
            ],

          ),//Column
        ),

      ),
    );
  }
}
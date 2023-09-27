import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class Ficard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Stack(
          children: [
            Container(
              height: 250,
                width:400,
              decoration:  BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(30.0)),
                color: Colors.teal
              ),
            ),
             Positioned(
               top :80,
             left:30,
           child:  Transform.rotate(
             angle:90 * pi /180,
             child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.simCard,color:Colors.grey,),
                    SizedBox(width:8 ,),

                    Transform.rotate(
                      angle: 90 * pi /180,
                        child: FaIcon(FontAwesomeIcons.wifi,color:Colors.grey,))
                  ],
                )),


             ),
            Text("DEVIKA ",style :GoogleFonts.aBeeZee(),),
            Text("VISA")
          ],
        )
      )
    );
  }
}

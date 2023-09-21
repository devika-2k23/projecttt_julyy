import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //to run an app
  runApp(MaterialApp( // default of theme of our flutter app
    home: SplashPage(), // initial page to be launched while running an app
  ));
}

class SplashPage extends StatelessWidget {
  @override
  // to create our widget tree we use build function!
  Widget build(BuildContext context) {
    // build context:used to locate widgets on the widget tree and monitor their actions!
    return Scaffold(
      // backgroundColor: Colors.white10,
      body: Container(
        decoration: const  BoxDecoration(
          // color: Colors.greenAccent
          //  image: DecorationImage(
          //    fit: BoxFit.cover,
          //      image: NetworkImage("https://images.unsplash.com/photo-1558865869-c93f6f8482af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1781&q=80"))
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.green,
                  Colors.black26,
                  Colors.greenAccent
                ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //adding built in icons
              // Icon(
              //   Icons.ac_unit_sharp,
              // size: 80,
              // color: Colors.lightBlueAccent,
              // ),
              //adding external icons (flutter accessed it as image)
              //Asset image as a image provider
              // Image(image: AssetImage('assets/icons/icon2.png')),
              // Network image as a image provider
              Image(
                image: NetworkImage("https://cdn3.iconfinder.com/data/icons/feather-5/24/chevrons-right-256.png"),
                width: 100,
                height: 100,
              ),
              Text(
                "My Applicatiion",
                style: GoogleFonts.dancingScript(
                    fontSize: 40,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold
                ),
                // style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.blueGrey,
                // fontWeight:FontWeight.normal),
              )
            ],
          ),
        ),
      ),

    );


  }

}
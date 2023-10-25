import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:projecttt_july/Stateful_splash.dart';
void main(){
  runApp(MaterialApp(home: Introscreen(),));
}
class Introscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   PageDecoration decorationPage=PageDecoration(
titleTextStyle: TextStyle(
  fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black
),
     bodyTextStyle: TextStyle(
       fontSize: 20,fontStyle: FontStyle.italic,color: Colors.brown
     ),
     boxDecoration: BoxDecoration(
       gradient: LinearGradient(colors: [
         Colors.white,Colors.yellow,Colors.orangeAccent
       ],
       begin: Alignment.bottomLeft,
       end: Alignment.topRight)),
   imageFlex: 1,
   );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: decorationPage,
          title: "First Page",
          body: "In this category, photography becomes a canvas for artistic expressions of fashion and beauty. Through expertly composed images, photographers capture trends, styles, and personal statements, transforming models into walking works of art.",
          image: IntroImage("https://images.unsplash.com/photo-1696253930712-f17f6b3d7095?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
        ),
        PageViewModel(
          decoration: decorationPage,
          title: "Second Page",
          body: "Nature's wonders take center stage in this category, where photographers capture the breathtaking landscapes, diverse flora and fauna, and mesmerizing natural phenomena that adorn our planet. From grand vistas to macro shots, these images transport viewers into the heart of the great outdoors.",
          image: IntroImage("https://images.unsplash.com/photo-1696609450216-bb51c00cdb02?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
        ),
        PageViewModel(
          decoration: decorationPage,
          title: "Third Page",
          body: "Celebrating the artistry of spaces, this category recognizes exceptional photography that captures the essence of architectural marvels and interior designs. From sweeping cityscapes to intimate details, entrants showcase the beauty and functionality of built environments.",
          image: IntroImage("https://images.unsplash.com/photo-1696149046072-72a3c9db7781?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1852&q=80"),
        ),
        PageViewModel(
          decoration: decorationPage,
          title: "Fourth Page",
          body: "This category pays homage to the fascinating world of animals. Photographers capture the diversity, behavior, and beauty of creatures from across the globe, bringing the animal kingdom closer to the viewer's heart and lens.",
          image: IntroImage("https://images.unsplash.com/photo-1693858837548-6a43e8009428?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80"),
        )
      ],
      onSkip: ()=> Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>Splash2()),),
      onDone:()=> Navigator.of(context).push(
        MaterialPageRoute(builder: (context)=>Splash2()),) ,
      showSkipButton: true,
      skip: const Text('skip'),
      // showBackButton: true,
      // back: const Text('back'),
      next: const Icon(Icons.arrow_forward_ios_rounded),
      done: const Text('done'),
      dotsDecorator: const DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
        size: Size(12,10),
        activeSize: Size(22,10),
        activeColor: Colors.green
      ),
    );
  }

Widget  IntroImage(String imgpath) {
    return Align(
      alignment: Alignment.topCenter,
      child:Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:NetworkImage(imgpath))
        ),
      ),
    );
}
}

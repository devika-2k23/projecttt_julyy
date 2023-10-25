import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MobileScreen(),));
}
class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar:AppBar(
        title: const Text(
            'Mobile',
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // currently playing vedio
            Padding(
              padding: const EdgeInsets.all(8),
              child: AspectRatio(
                  aspectRatio: 16/9,
              child: Container(
                color: Colors.yellow,
              ),),
            ),
            Expanded(
                child: ListView.builder(itemBuilder: (context,index){
                  return Padding(
                    padding:const EdgeInsets.all(8),
                    child:Container(
                      color: Colors.pinkAccent,
                      height: 120,
                    ),
                  );
                },
                  itemCount: 8,
                ))],
        ),
      ),
    );
  }
}

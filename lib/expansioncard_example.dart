import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: ExpansionTileEx(),));
}

class ExpansionTileEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('expansion card'),
      ),
      body: const Column(
        children: [
          ExpansionTile(
            title: Text("Colors"),subtitle: Text('Expand to view more'),
          children: [
            Image(image: AssetImage("assets/images/list5.jpeg"),),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit_outlined)
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.pink,),
            //   title: Text('pink'),
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.red,),
            //   title: Text('red'),
            // ),
            // ListTile(
            //   leading: CircleAvatar(backgroundColor: Colors.yellow,),
            //   title: Text('yellow'),
            // ),
          ],
          ),
          ExpansionTile(
            title: Text("Colors"),subtitle: Text('Expand to view more'),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/list4.jpeg"),),
                title: Text('Raichel'),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/list.jpeg"),),
                title: Text('red'),
              ),
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/list2.avif"),),
                title: Text('yellow'),
              ),

            ],
          )
        ],
      ),
    );
  }
}

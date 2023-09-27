import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: ListView1(),
  ));
}


class ListView1 extends StatelessWidget {
  //const Listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView 1"),
      ),
      body: ListView(
        children: [
          Card(child:ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/images/list.jpeg")),
              title: Text('product 1'),
          subtitle: Text("This is a a sample subtitle"),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.11'),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 12,

                  backgroundColor: Colors.green,
                child: Text('2'),)
              ],
            ),
          )),
          Card(child:ListTile(
              leading:CircleAvatar(backgroundImage:AssetImage("assets/images/list3.jpeg")),
              title: Text('product 2'),
            subtitle: Row(
              children: [
                Icon(Icons.read_more_rounded),
                Text("This is a sample subtitle"),
              ],
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('10.32'),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 12,
                  backgroundColor: Colors.green,
                  child: Text("3"),
                )
              ],
            ),
          )),
          Card(child:ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("assets/images/list4.jpeg")),
              title: Text('product 3'),
          subtitle: Text("How u"),
          trailing: Text('10.51'),)),
          Card(child:ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/list5.jpeg")),
              title: Text('product 4'),
          subtitle: Text("hlw"),
          trailing: Text('11.00'),)),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_Builder()));
}
class ListView_Builder extends StatelessWidget {
  //const ListView_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder"),),
      body: ListView.builder(
          itemBuilder: (context,index){
       return Card(
        child: ListTile(
        title: Text('hello'),
        subtitle: Text('mydata'),
    leading: Icon(Icons.ac_unit_outlined),
    trailing: Icon(Icons.shopping_cart),
        ),
        );
    }),
    );
  }
}

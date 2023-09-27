import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView2(),));
}
class ListView2 extends StatelessWidget {
  var title =['Ammu','Anu','sandra','Anwar','Lavanya','Abhiram','Kannan','Rahul','Reghu','Abhishek'];
  var subtitle=[20,30,40,50,60,70,80,90,10,100];
  var icons=[
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined),
    Icon(Icons.account_circle_outlined)
  ];
  //const ListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 2'),
      ),
      body: ListView(
        children: List.generate(10, (index) =>
            Card(
          child: ListTile(
            title: Text("Hello"),
            subtitle: Text('${subtitle[index]}'),
            // leading:Icon(icons[index]),
             trailing: Icon(Icons.shopping_cart),
          ),
        ))

        ,
      ),
    );
  }
}

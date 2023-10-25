import 'package:flutter/material.dart';
import 'package:projecttt_july/customwidget/refactoringwidget.dart';
void main (){
  runApp(MaterialApp(home: Grid_With_Refactoring(),));
}
class Grid_With_Refactoring extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid with Refactoring Widget'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
      crossAxisSpacing: 15,
          mainAxisSpacing: 15),
        children: [

          Custom_Card(
                image: NetworkImage("https://images.unsplash.com/photo-1574201635302-388dd92a4c3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGZhc2hpb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
                  text: "My Product",
                  click: (){},
            click1: (){},
              ),
    ],
            ),
          );

  }
}

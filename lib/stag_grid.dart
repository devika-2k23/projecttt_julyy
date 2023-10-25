import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home:StaggeredGriddd(),));
}
class StaggeredGriddd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staqggered Grid View"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        children: const [
          StaggeredGridTile.count(crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
               // color: Colors.pink,
                child: Center(
                  child: Image(
                      image: AssetImage('assets/images/list3.jpeg')),
                ),
              )),
          StaggeredGridTile.count(crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Icon(Icons.account_tree),
                ),
              )),
          StaggeredGridTile.count(crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                color: Colors.lightBlueAccent,
                child: Center(
                  child: Icon(Icons.account_tree),
                ),
              ))
        ],
        ),
      ),
    );
  }
}

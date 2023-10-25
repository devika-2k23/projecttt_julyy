import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: DraweEx(),));
}

class DraweEx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
           UserAccountsDrawerHeader(
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('assets/images/list3.jpeg')
               )
             ),
             accountName: Text('Ammu'), accountEmail:Text('Ammu@gmail.com'),
             currentAccountPicture: CircleAvatar(
               backgroundImage: AssetImage("assets/images/list4.jpeg"),
             ),
           ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('Favorite'),
            ),
            ListTile(
              leading: Icon(Icons.work_history_rounded),
              title: Text('work history'),
            ),
            Divider(
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
            ),

          ],
        )

        ),

    );
  }
}


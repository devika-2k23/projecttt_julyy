import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: BigScreen()));
}
class BigScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text('D E S K T O P',
        style: TextStyle(
          color: Colors.black,
        ),),

      ),
      body:  Padding(
        padding:  EdgeInsets.all(8.0),
        child: Row(
          children: [
            // first column
            Expanded(
                child: Column(
                  children: [
                    //youtube video
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16/4,
                        child: Container(
                          color: Colors.pinkAccent[400],
                        ),
                      ),
                      ),
                    // comment section and recommend vedios
                    Expanded(
                        child: ListView.builder(
                          itemCount: 8,
                            itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                               child: Container(
                                 color: Colors.deepPurple[300],
                                 height: 120,
                               ),
                              ),
                            );
                            },
                        ),
                    )
                  ],
                ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                color: Colors.deepPurple[300],
              ),
            )
          ],

        ),
      ),
    );
  }
}

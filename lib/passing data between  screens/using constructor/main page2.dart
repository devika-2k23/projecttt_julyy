import 'package:flutter/material.dart';
import 'package:projecttt_july/passing%20data%20between%20%20screens/using%20constructor/tostateful%20page.dart';
import 'package:projecttt_july/passing%20data%20between%20%20screens/using%20constructor/tostateless%20page.dart';
import 'package:projecttt_july/passing%20data%20between%20%20screens/usingnavigator/dummydata.dart';
void main(){
  runApp(MaterialApp(home: MainPage2(),));
}
class MainPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Passing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => DataStateless(
                name:"Ammu",
                location:"Kakkanad",
                age:20 ,
                 phone:9645529036,
                 img:products[0]['image']
                  ))
            ),
                child: const Text('To Stateless')),
            ElevatedButton(onPressed:() => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DataStatefull(
                  name:"Ammu",
                  location:"Kakkanad",
                  age:20 ,
                  phone:9645529036,
                  img:products[0]['image']
              ))
            ) , child: const Text('To Statefull')),

          ],
        ),
      ),
    );
  }
}

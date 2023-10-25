import 'package:flutter/material.dart';
import 'BigScreen.dart';
import 'MobileScreen.dart';
void main(){
  runApp(MaterialApp(home: Homeeee(),));
}
class Homeeee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devicewidth=MediaQuery.of(context).size.width;
    if(devicewidth < 600) {
      return MobileScreen();
    }else{
      return BigScreen();
  }
  }
}

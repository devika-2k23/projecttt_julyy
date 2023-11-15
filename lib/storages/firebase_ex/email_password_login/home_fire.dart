import 'package:flutter/material.dart';
import 'firebase_helper.dart';
import 'login_fire.dart';
class Home_Fire extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(onPressed: (){
          FireBaseHelper().logout().then((value) => Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Fire())));
        },
          color: Colors.green,
          shape: StadiumBorder(),
          height: 50,
          minWidth: 200,
          child: Text("SIGN-OUT"),),

      ),
    );
  }
}
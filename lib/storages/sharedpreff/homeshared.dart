import 'package:flutter/material.dart';
import 'package:projecttt_july/storages/sharedpreff/loginshared.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeShared extends StatefulWidget {
  @override
  State<HomeShared> createState() => _HomeSharedState();
}
class _HomeSharedState extends State<HomeShared> {
  late SharedPreferences prefs;
  String? user;
  @override
void initState(){
    fetchUser();
  }
  void fetchUser() async{
    prefs =await SharedPreferences.getInstance();
    setState(() {
      user=prefs.getString('UserName');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Welcome $user'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              prefs.setBool('firstlogin', true);
              Navigator.pushReplacement(context,MaterialPageRoute(
                  builder: (context) => Login_Shared()));
            },
                child: const Text("Logout"))],
        ),
      ),

    );
  }
}

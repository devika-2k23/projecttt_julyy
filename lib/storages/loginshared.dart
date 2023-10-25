import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homeshared.dart';
void main(){
  runApp(MaterialApp(home: Login_Shared(),));
}
class Login_Shared extends StatefulWidget {
  @override
  State<Login_Shared> createState() => _Login_SharedState();
}
class _Login_SharedState extends State<Login_Shared> {
  final UserName = TextEditingController();
  final Password =  TextEditingController();
  late bool newUser;
  late SharedPreferences prefs;

  @override
  void initState(){
    check_user_already_login();
    super.initState();
  }
  void check_user_already_login() async{
    prefs = await SharedPreferences.getInstance();
    newUser= prefs.getBool('firstlogin') ?? true;
    // if value of firstlogin is null newuser is true
    if(newUser== false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeShared()));
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Here"),
      ),
      body: Column(
        children: [
          TextField(
            controller: UserName,
            decoration: const InputDecoration(
              hintText: "UserName",border: OutlineInputBorder()),
          ),
          TextField(
           controller: Password,
           decoration: const InputDecoration(
             hintText: "Password",border: OutlineInputBorder()),
          ),
          ElevatedButton(onPressed: () async{
              prefs= await  SharedPreferences.getInstance();
            String uname = UserName.text.trim();
            String pass  = Password.text.trim();

            if(uname != '' && pass != '') {
              prefs.setString('UserName', uname);
              prefs.setString('Password', pass);
              // first login means user already loggrd in
              prefs.setBool('firstlogin', false);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(
                  builder: (context)=>HomeShared()));
            }
            },
              child: const Text("Login"))
        ],
      ),
    );
  }
}

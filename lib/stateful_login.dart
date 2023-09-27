
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projecttt_july/stateful_registration.dart';

import 'home.dart';

void main(){
  runApp(MaterialApp(home:Login_stateful()));
}

class Login_stateful extends StatefulWidget{
  @override
  State<Login_stateful> createState()=>_Login_StatefulState();
}

class _Login_StatefulState extends State<Login_stateful> {
  String username="ammu@gmail.com";
  String password="ammu";
  final uname_controller=TextEditingController();
  final pass_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Padding(
          padding:const EdgeInsets.all(80),
          child:Column(
            children:[
              Image.asset("assets/icons/icon2.png",
                height:100,
                width: 100,
              ),
              Text("My App july",
                style: GoogleFonts.cabinSketch(
                    fontSize:35,
                    fontWeight:FontWeight.bold,
                    color:Colors.teal
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:15),
                child: TextField(
                  controller: uname_controller,
                  decoration: InputDecoration(
                      hintText: "Username",
                      labelText:"Username",
                      helperText: "Username must be an email",
                      prefixIcon: Icon(Icons.people_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      )
                  ),
                ),
              ),
              //SizedBox(height:15,),  : gives space btwn textfields
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: TextField(
                    obscureText: true,
                    obscuringCharacter:'*',
                    controller: pass_controller,
                    decoration:InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        helperText: "Password must contain 6 characters ",
                        prefixIcon: Icon(Icons.password_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                        )
                    )
                ),
              ),
              ElevatedButton(onPressed: (){
                // String userip=uname_controller.text;
                if(username==uname_controller.text && password==pass_controller.text){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Invalid username/ Password or the Fields are empty"),
                        backgroundColor:Colors.red,
                      ));
                }
              },
                  child:const Text("Login")),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder:(context)=>Reg_stateful()));
                },
                    child: Text("Not a user? Signup here!!")),
              )
            ],
          ),
        )
    );
  }
}
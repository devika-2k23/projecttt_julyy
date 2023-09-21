import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Register_stateful()));
}
class Register_stateful extends StatefulWidget {

  @override
  State<Register_stateful> createState() => Register_statefulState() ;


}

class Register_statefulState extends State<Register_stateful>{
  final formkey=GlobalKey<FormState>();
  String? pass;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             keyboardType: TextInputType.name,
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               hintText: "Name"
             ),

           ),
         ),

         TextFormField(
           decoration: InputDecoration(
             border: OutlineInputBorder(),
             hintText: 'Phone number'
           ),
           validator: (num){
             if(num!.isEmpty || num.length !=10){
               return 'Phone number should have 10 digits/field must be an empty';
             }else{
               return null;
             }
           }
         ),
         Padding(
         padding: const EdgeInsets.all(10.0),
    child: TextFormField(
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: "Username"
    ),
    validator:(uname){
    if(uname!.isEmpty || !uname!.contains('@') || !uname.contains('.com')){
    return 'Username must not be empty/ or invalid';
    }else{
    return null;
    }
    ),
    ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: TextFormField(
             decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "password"
             ),
             validator: (password){
               if(password!.isEmpty || password.length<6){
                 return'password must not be empty/password length must be >6';
               }else{
                 return null;
               }

             },
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               hintText: 'cpassword'
             ),
             validator: (cpassword){
               if(cpassword!.isEmpty || cpassword !=pass){
                 return "password must be same/field must not be empty";
               }else{
                 return null;
               }
             }
           ),
         ),
           Padding(
           padding: EdgeInsets.all(10),
    child: ElevatedButton(onPressed: (){
      final valid=formkey.currentState!.validate();
      if(valid){
        Navigator.of(context);
    }
    },),)
       ],
     ),
   );
  }
}

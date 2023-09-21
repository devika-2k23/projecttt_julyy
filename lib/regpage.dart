import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home:Registration_Page(),
  ));
}
class Registration_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration page') ,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:30),
        child: Column(
          children: [
            Text(
              "Get started!!",
              style: GoogleFonts.sahitya(
            fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87
            )
            ),
            Padding(
              padding: const EdgeInsets.symmetric( vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),


              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Phone no",
                  labelText: "Phone no",
                  prefixIcon:Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  helperText: "*Username must be an email",
                  prefixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                ),
                ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "New password",
                  labelText: "New password",
                  helperText: " *password must contain 8 characters",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Confirm password",
                  labelText: "Confirm password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  )
                ),
                
              ),
            ),
            ElevatedButton(onPressed:(){}, child: Text("Register")),


          ],
        ),
      ),

    );
  }

}


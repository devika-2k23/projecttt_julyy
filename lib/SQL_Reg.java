import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home:SQL_Reg() ,));

class SQL_Reg extends StatelessWidget {
  var cname = TextEditingController();
  var cmail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Text(
                  "REGISTRATION",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: cname,
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Name is required";
                    } else
                      return null;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: cmail,
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains(".")) {
                      return "Enter valid email";
                    } else
                      return null;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  validator: (pass1) {
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Password must should be greater than 6";
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.next,
                  controller: pass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  validator: (pass1) {
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Password must should be greater than 6";
                    } else if (pass.text != cpass.text) {
                      return "Password not matched";
                    } else {
                      return null;
                    }
                  },
                  controller: cpass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                      MaterialStateProperty.all(const Size(330, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),

                  onPressed: ()  {

                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SizedBox(height: 60,),
                  TextButton(
                      onPressed: () {
                      },
                      child:
                       Text(
                        "Login!!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
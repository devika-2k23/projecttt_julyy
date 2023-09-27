import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Stateful_Login.dart';

void main() {
  runApp(MaterialApp(
    home: Reg_stateful(),
  ));
}

class Reg_stateful extends StatefulWidget {
  @override
  State<Reg_stateful> createState() => _Reg_statefulState();
}

class _Reg_statefulState extends State<Reg_stateful> {
  final formkey = GlobalKey<FormState>();
  String? pass;
  bool passwordhidden = true;
  bool cpasshidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRATION"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              // Image.asset(
              //   "assets/icons/icon1.png",
              //   height: 200,
              //   width: 150,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('REGISTER HERE !',
                      style: GoogleFonts.aboreto(
                          fontWeight:FontWeight.bold,
                          fontSize:20
                      ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration:  InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Name',
                      labelText: 'Name'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration:  InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: 'Username',
                      labelText: 'Username'
                  ),

                  ///here the value entered at text form field will stored at uname
                  validator: (uname) {
                    if (uname!.isEmpty ||
                        !uname.contains('@') ||
                        !uname.contains('.com')) {
                      return 'Invalid Username or Field must not be empty ';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration:  InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: 'Phone Number',
                      labelText: "Phone Number"
                  ),
                  validator: (num) {
                    if (num!.isEmpty || num.length != 10) {
                      return 'Field must contain 10 digits or field must not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passwordhidden,
                  validator: (password) {
                    pass = password;
                    if (password!.isEmpty || password.length < 6) {
                      return 'Atleast 6 characters or Field must not be empty';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passwordhidden == true) {
                                passwordhidden = false;
                              } else {
                                passwordhidden = true;
                              }
                            });
                          },
                          icon: Icon(passwordhidden == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: 'Password',
                      labelText: "Enter your Password"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (cpassword) {
                    if (cpassword!.isEmpty || cpassword != pass) {
                      return 'Password must be same or Field must not be empty';
                    } else {
                      return null;
                    }
                  },
                  obscureText: cpasshidden,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: 'Password',
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (cpasshidden == true) {
                              cpasshidden = false;
                            } else {
                              cpasshidden = true;
                            }
                          });
                        },
                        icon: Icon(cpasshidden == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility),
                      )),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Reg_stateful()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Inavlid datas')));
                    }
                  },
                  child: Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}
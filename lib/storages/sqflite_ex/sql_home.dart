import 'package:flutter/material.dart';
import 'sql_login.dart';
import 'sql_reg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Registration Page
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>SQL_Register() ,
                ));
              },
              child: Text('Register'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Login Page
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  LoginPage(),
                ));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
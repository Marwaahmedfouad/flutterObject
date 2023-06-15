import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String nameText;
  late String passText;

  void _login() {
    Navigator.pushNamed(
      context,
      '/logininfo',
      arguments: {'name': nameText, 'password': passText},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login", style: TextStyle(fontSize: 30)),
            Icon(Icons.person, size: 70),
            SizedBox(height: 30.0),
            TextField(
              onChanged: (value) {
                nameText = value;
              },
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                labelText: 'Name',
                suffixIcon: Icon(Icons.input),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                passText = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: 'Password',
                suffixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:app/Home.dart';
import 'package:app/Login.dart';
import 'package:app/LoginInfo.dart';
import 'package:app/QuestionsScreen.dart';
import 'package:app/ScoreScreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/logininfo': (context) => LoginInfo(),
        '/results': (context) => ScoreScreen(),
      },
    );
  }
}

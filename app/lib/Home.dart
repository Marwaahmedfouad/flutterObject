import 'package:flutter/material.dart';
import 'package:app/Login.dart';
import 'package:app/QuestionsScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int idx = 0;
  List<Widget> screens = [
    LoginScreen(),
    QuizScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(''),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  idx = 0;
                });
              },
            ),
            ListTile(
              title: const Text('Questions'),
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                  idx = 1;
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: screens[idx],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        selectedLabelStyle:
         TextStyle(color: Colors.blue),
        onTap: (value) {
          setState(() {
            idx = value;
          });
        },
        currentIndex: idx,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), label: "Questions"),
        ],
      ),
    );
  }
}

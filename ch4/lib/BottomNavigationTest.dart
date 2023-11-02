import 'package:flutter/material.dart';

class BottomNavigationTest extends StatefulWidget {
  const BottomNavigationTest({super.key});

  @override
  State<BottomNavigationTest> createState() => _BottomNavigationTestState();
}

class _BottomNavigationTestState extends State<BottomNavigationTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        color: Colors.yellow,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:  'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label:  'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label:  'Notification'
          ),
        ],
      ),
    );
  }
}

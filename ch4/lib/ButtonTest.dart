import 'package:flutter/material.dart';

class ButtonTest extends StatefulWidget {
  const ButtonTest({super.key});

  @override
  State<ButtonTest> createState() => _ButtonTestState();
}

class _ButtonTestState extends State<ButtonTest> {
  @override
  Widget build(BuildContext context) {
    Scaffold s = Scaffold(
      appBar: AppBar(
        title: Text('Button Test'),
        backgroundColor: Colors.deepPurple,
      ),
      body: CircleAvatar(
        child: Icon(Icons.person),
      ),
    );

    return s;
  }

  void MyPressed(){
    setState(() {

    });
  }
}

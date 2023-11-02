import 'package:flutter/material.dart';

import 'BottomNavigationTest.dart';
import 'ButtonTest.dart';
import 'CenterTest.dart';
import 'ContainerTest.dart';
import 'PageViewUI.dart';
import 'StackTest.dart';
import 'PuzzleUI.dart';
import 'TabBarTest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ButtonTest(),
    );
  }
}


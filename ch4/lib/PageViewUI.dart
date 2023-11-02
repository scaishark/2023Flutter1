import 'package:flutter/material.dart';

class PageViewUI extends StatefulWidget {
  const PageViewUI({super.key});

  @override
  State<PageViewUI> createState() => _PageViewUIState();
}

class _PageViewUIState extends State<PageViewUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PageView Test',
        ),
        backgroundColor: Colors.green,
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
          ),
          Container(
            color: Colors.green,
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}

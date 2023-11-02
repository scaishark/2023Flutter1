import 'package:ch4/PuzzleGame.dart';
import 'package:flutter/material.dart';

class PuzzleUI extends StatefulWidget {
  const PuzzleUI({super.key});

  @override
  State<PuzzleUI> createState() => _PuzzleUIState();
}

class _PuzzleUIState extends State<PuzzleUI> {
  PuzzleGame pg = new PuzzleGame();

  String GetButtonText(int index){
    int value = pg.GetValue(index);
    if (value == 0)
      return '';
    else
      return '$value';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Sorting Puzzle'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 4,
        children: [
          ElevatedButton(
            onPressed: (){MoveButton(0);},
            child: Text(GetButtonText(0)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(1);},
            child: Text(GetButtonText(1)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(2);},
            child: Text(GetButtonText(2)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(3);},
            child: Text(GetButtonText(3)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(4);},
            child: Text(GetButtonText(4)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(5);},
            child: Text(GetButtonText(5)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(6);},
            child: Text(GetButtonText(6)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(7);},
            child: Text(GetButtonText(7)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(8);},
            child: Text(GetButtonText(8)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(9);},
            child: Text(GetButtonText(9)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(10);},
            child: Text(GetButtonText(10)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(11);},
            child: Text(GetButtonText(11)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(12);},
            child: Text(GetButtonText(12)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(13);},
            child: Text(GetButtonText(13)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(14);},
            child: Text(GetButtonText(14)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(15);},
            child: Text(GetButtonText(15)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(16);},
            child: Text(GetButtonText(16)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(17);},
            child: Text(GetButtonText(17)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(18);},
            child: Text(GetButtonText(18)),
          ),
          ElevatedButton(
            onPressed: (){MoveButton(19);},
            child: Text(GetButtonText(19)),
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                pg.Shuffle();
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
            ),
            child: Text(
              'Start',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  void MoveButton(int index){
    setState(() {
      pg.SwapPosition(index);
    });
  }
}

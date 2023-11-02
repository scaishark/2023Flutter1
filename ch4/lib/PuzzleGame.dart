import 'dart:math';

class PuzzleGame {
  List<int> values = [3,2,1,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,0];

  int GetValue(int index){
    return values[index];
  }

  void Shuffle(){
    int index = 0;
    int num, i;

    while(index < 19){
      num = Random().nextInt(19) + 1;

      for(i=0; i<index; i++){
        if(num == values[i]) break;
      }
      if(i == index) {
        values[index] = num;
        index = index + 1;
      }
    }
    values[19] = 0;
  }

  void SwapPosition(int index){
    int zeroPosition = FindZeroPosition(index);
    if(zeroPosition == -1) return;
    values[zeroPosition] = values[index];
    values[index] = 0;
  }

  int FindZeroPosition(int index){
    int zeroIndex = -1;
    int maxX = 4;
    int maxY = 5;
    int indexX = index % maxX;
    int indexY = index ~/ maxX;

    if(indexX != 0){
      zeroIndex = indexY * maxX + indexX - 1;
      if(values[zeroIndex] == 0) return zeroIndex;
    }
    if(indexX != maxX-1){
      zeroIndex = indexY * maxX + indexX + 1;
      if(values[zeroIndex] == 0) return zeroIndex;
    }
    if(indexY != 0){
      zeroIndex = (indexY-1) * maxX + indexX;
      if(values[zeroIndex] == 0) return zeroIndex;
    }
    if(indexY != maxY-1){
      zeroIndex = (indexY+1) * maxX + indexX;
      if(values[zeroIndex] == 0) return zeroIndex;
    }

    return -1;
  }
}
import 'values.dart';
import 'board.dart';
class Piece{
  Tetromino type;
  Piece ({required this.type});
  List<int>position=[];
  void initializePiece(){
    switch(type){
      case Tetromino.L:
      position=[-4,-14,-25,-9];
      break;
      case Tetromino.J:
        position=[-4,-14,-25,-9];
        break;
      case Tetromino.I:
        position=[-4,-14,-25,-9];
        break;
      case Tetromino.S:
        position=[-4,-14,-25,-9];
        break;
      case Tetromino.T:
        position=[-4,-14,-25,-9];
        break;
      case Tetromino.Z:
        position=[-4,-14,-25,-9];
        break;

      default:
    }
  }
  void movePiece(Direction direction){
    switch(direction){
      case Direction.down:
        for(int i=0;i<position.length;i++){
          var row=10;
          position[i]+=10;
        }
        break;
      case Direction.left:
        for(int i=0;i<position.length;i++){
          position[i]-=1;
        }
        break;
      case Direction.down:
        for(int i=0;i<position.length;i++){
          position[i]+=1;
        }
        break;
    }
  }
}
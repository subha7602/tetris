import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tetris/piece.dart';
import 'package:tetris/pixel.dart';
import 'package:tetris/values.dart';
class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  int row=10;
  int col=15;
  Piece current=Piece(type:Tetromino.L);
  void initState(){
    super.initState();
  }
  void StartGame(){
    current.initializePiece();
    Duration frameRate=const Duration(microseconds: 400);
    gameloop(frameRate);
  }
  void gameloop(Duration frameRate){
    Timer.periodic(
      frameRate,(timer){
        setState((){
         current.movePiece(Direction.down);
        });
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
          itemCount:row*col,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:row ),
          itemBuilder: (context,index){
            if(current.position.contains(index)){
            return Pixel(color: Colors.yellow, child: index,);}
            else{
             return Pixel(color:Colors.grey,
                 child:index,);
            }
          },
      ));

  }
}


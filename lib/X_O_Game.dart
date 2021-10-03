import 'package:flutter/material.dart';
import 'package:flutter3/ResetGame.dart';

import 'X_O_Button.dart';

class X_O_Game extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TheGame;
  }
}

class X_O_GameState extends State<X_O_Game>{
  String player='';
  List<String> play=List.filled(9, '');
  String winner='';
  int xScore=0;
  int oScore=0;
  List <Color> btnColor=List.filled(9, Colors.white);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ResetGame(OnClickResetGame),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text('The Winner :\t $winner',
                    style: TextStyle(color: Colors.white,fontSize: 25),),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Player 1 (X): $xScore  |',style: TextStyle(color: Colors.white,fontSize: 25)),
                      Text('Player 2 (O): $oScore',style: TextStyle(color: Colors.white,fontSize: 25)),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                X_O_Button(0, OnClick),
                X_O_Button(1, OnClick),
                X_O_Button(2, OnClick),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                X_O_Button(3, OnClick),
                X_O_Button(4, OnClick),
                X_O_Button(5, OnClick),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                X_O_Button(6, OnClick),
                X_O_Button(7, OnClick),
                X_O_Button(8, OnClick),
              ],
            ),
          ),
        ),

      ],
    );
  }

  void OnClick(int position){
    if(winner.isNotEmpty){
      setState(() {
        player='';
        play=List.filled(9, '');
        winner='';
        btnColor=List.filled(9, Colors.white);
      });
    }


setState(() {
  if (player.isEmpty && play[position].isEmpty) {
    player = 'X';
    play[position] = player;
    btnColor[position]=Colors.red;
  }
  else if (player == 'X' && play[position].isEmpty) {
    player = 'O';
    play[position] = player;
    btnColor[position]=Colors.blue;
  }
  else if (player == 'O' && play[position].isEmpty) {
    player = 'X';
    play[position] = player;
    btnColor[position]=Colors.red;
  }
});

          setState(() {
            TheWinner('X');
            TheWinner('O');
          });



  }
  void OnClickResetGame(){
    setState(() {
      player='';
      play=List.filled(9, '');
      winner='';
      xScore=0;
      oScore=0;
      btnColor=List.filled(9, Colors.white);;
    });
  }
  void TheWinner(String type){

      for(int i=0;i<play.length;i++){


        if(play[0]==type&&play[1]==type && play[2]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
        else if(play[3]==type&&play[4]==type && play[5]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
        else if(play[3]==type&&play[4]==type && play[5]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
        else if(play[0]==type&&play[3]==type && play[6]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
        else if(play[1]==type&&play[4]==type && play[7]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
        else if(play[2]==type&&play[5]==type && play[8]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
        else if(play[0]==type&&play[4]==type && play[8]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
        else if(play[2]==type&&play[4]==type && play[6]==type){
          if(type=='X'){
            winner='Player 1';
            xScore++;
            break;
          }
          else if(type=='O'){
            winner='Player 2';
            oScore++;
            break;
          }
        }
      }

      if(winner.isNotEmpty){
        setState(() {
          player='';
          play=List.filled(9, '');
          btnColor=List.filled(9, Colors.white);
        });
      }
      else if(IsDrue()){
        setState(() {
          player='';
          play=List.filled(9, '');
          winner='Drue';
          btnColor=List.filled(9, Colors.white);;
        });
      }


  }
  bool IsDrue(){
    bool isDrue=true;
    for(int i=0;i<play.length;i++){
      if(play[i].isEmpty){
        isDrue=false;
      }
    }

    return isDrue;
  }
}
X_O_GameState TheGame=X_O_GameState();
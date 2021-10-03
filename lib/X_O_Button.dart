import 'package:flutter/material.dart';
import 'package:flutter3/X_O_Game.dart';

class X_O_Button extends StatelessWidget{
  int player;
  Function onClick;
  X_O_Button(this.player,this.onClick);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Container(
        margin: EdgeInsetsDirectional.all(4),
        child: ElevatedButton(onPressed: ()=> {onClick(player)},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(TheGame.btnColor[player])),
            child: Text(TheGame.play[player],style: TextStyle(color: Colors.white,fontSize: 35),)),
      ),
    );
  }
}
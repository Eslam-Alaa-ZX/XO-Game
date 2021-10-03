import 'package:flutter/material.dart';

class ResetGame extends StatelessWidget{
  VoidCallback onClick;
  ResetGame(this.onClick);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Container(
        margin: EdgeInsetsDirectional.all(4),
        child: ElevatedButton(onPressed: onClick,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            child: Text('Reset The Game',style: TextStyle(color: Colors.amber,fontSize: 25),)),
      ),
    );
  }
}
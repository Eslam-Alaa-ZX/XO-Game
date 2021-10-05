import 'package:flutter/material.dart';
import 'package:flutter3/X_O_Game.dart';

class PlayersName extends StatefulWidget{
  static final String routeName='Players';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PlayersNameState();
  }

}

class PlayersNameState extends State<PlayersName>{

  String player1='';
  String player2='';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text('Player\'s Names'),),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 10,top: 20,bottom: 5),
              alignment: AlignmentDirectional.topStart,
              child: Text('Player1: ',style: TextStyle(fontSize: 20),)),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(onChanged: (name1){
              player1=name1;
            },
              decoration: InputDecoration(hintText: 'Player\'s 1 Name',
                filled: true,
                fillColor: Colors.lightBlueAccent,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10,top: 20,bottom: 5),
              alignment: AlignmentDirectional.topStart,
              child: Text('Player2: ',style: TextStyle(fontSize: 20))),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(onChanged: (name2){
              player2=name2;
            },
              decoration: InputDecoration(hintText: 'Player\'s 2 Name',
                filled: true,
                fillColor: Colors.lightBlueAccent,),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    height: 70,
                    margin: EdgeInsets.all(50),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                        onPressed: (){
                          if(player1.isNotEmpty && player2.isNotEmpty){
                            Navigator.pushNamed(context, X_O_Game.routeName,arguments: X_O_GameArgs(Player1: player1,Player2: player2));
                          }
                          else{
                            showDialog(context: context, builder: (context){
                              return AlertDialog(title: Text('Error',style: TextStyle(fontSize: 25)),content: Text('Plese Enter your names.',style: TextStyle(fontSize: 25),));
                            });
                          }

                        },
                        child: Text('Let\'s Go!!!'))),
              ),
            ],
          )
        ],
      )
      ,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter3/HomeScreen.dart';
import 'package:flutter3/PlayersName.dart';
import 'package:flutter3/X_O_Game.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My X_O Game',
      routes: {
        HomeScreen.routeName :(context){return HomeScreen();},
        PlayersName.routeName :(context)=>PlayersName(),
        X_O_Game.routeName :(context)=>X_O_Game()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
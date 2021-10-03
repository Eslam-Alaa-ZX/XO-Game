import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black26,
          title: Text('Eslam X_O Game'),
        ),
        body: X_O_Game(),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  static final routeName='Home';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Welcom in Eslam XO Game'),),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/imag/XO2.jpg'),fit: BoxFit.cover,)),
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(138, 4, 7, 4)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Row(children: [Text('Eslam XO Game',style: TextStyle(fontSize: 40,color: Colors.orange,),)],mainAxisAlignment: MainAxisAlignment.center)),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 100,horizontal: 60),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60))),
                           onPressed: (){},
                          child: Text('Start'),),
                      ),
                    ),
                  ],),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
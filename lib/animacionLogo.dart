import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AnimacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        //appBar: AppBar( title: Text('GestMas'),centerTitle: true, ),

        body: Stack(
          children: <Widget>[
            ListView(
              
              children: <Widget>[            
              Container(              
                height: 750,
                width: 100,
                child: FlareActor("assets/animaciones/prueba.flr",
                animation: "Login", 
                fit: BoxFit.fitWidth,
                ),
              )
            ],
            )
          ],
        ),
          ));
  }
}
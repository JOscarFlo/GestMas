import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class Materias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _asignaturas()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottonNavigationBar(context),
    );
  }

  
  Widget _fondoApp(){
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration :BoxDecoration(
        gradient: LinearGradient(
            begin:FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(255, 255, 255, 1.0),
              Color.fromRGBO(88, 137, 178, 1.0)
            ]
          )
        ),
      );
      final cajaRosa = Transform.rotate(
        angle: -pi /5.0,
        child:Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 255, 255, 1.0),
              Color.fromRGBO(255, 255, 255, 1.0)
            ]
          )
        ),
      ),
    );
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );
  }

  Widget _titulos(){
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Seleccione la Materia', style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _bottonNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 10),
        primaryColor: Colors.lightBlueAccent,
        textTheme: Theme.of(context).textTheme.copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.blur_circular, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0),
            title: Container()
          )
        ]
      ),
    );

  }

  Widget _asignaturas(){
    return Table(
      children: [
        TableRow(
          children: [
            _creaciondebotones(Colors.red, Icons.collections_bookmark,'Lenguaje'),
            _creaciondebotones(Colors.greenAccent, Icons.collections_bookmark,'Matemática'),
          ]
        ),
        TableRow(
          children: [
            _creaciondebotones(Colors.purpleAccent, Icons.collections_bookmark,'Sociales'),
            _creaciondebotones(Colors.pinkAccent, Icons.collections_bookmark,'Ciencias'),
          ]
        ),
        TableRow(
          children: [
            _creaciondebotones(Colors.lightBlueAccent, Icons.people,'Física'),
            _creaciondebotones(Colors.indigo, Icons.accessible,'Prácticas'),
          ]
        )
      ],

    );

  }
  
  Widget _creaciondebotones ( Color color, IconData icono, String texto){

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color: Colors.white,size: 30.0),
              ),
              Text(texto, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 5.0)
            ],
          ),
        ),
      )
    );
  }

}


import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio'), centerTitle: true,),
      body: Stack(
        children: <Widget>[
            _fondoApp(),
            
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _titulos(),
                  _botonesRedondeados(),
                ],
              ),
            )

        ],
      ),
      bottomNavigationBar: _botonNavegacion(context),
      );
  }

  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(255, 255, 255, 1.0),
            Color.fromRGBO(88, 137, 178, 1.0),
          ]
        )
      ),
    );


    final  cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child:     Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
              colors: [
                //Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0),
              ]
            )
          ),
      ),
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa
        )
      ],
    );

  }



  Widget _titulos(){
    
    return SafeArea(
          child: Container(
        padding: EdgeInsets.all(80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('GestMas', style: TextStyle( color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold ),),
            SizedBox(height: 10.0,),
            Text('Centro Escolar La Peppa', style: TextStyle( color: Colors.black, fontSize: 18.0),),
          ],
        ),
      ),
    );
  }


  Widget _botonNavegacion(BuildContext context){

return Theme(
  data: Theme.of(context).copyWith(
    canvasColor: Color.fromRGBO(255, 255, 255, 1.0),
    primaryColor: Colors.blueAccent,
    textTheme: Theme.of(context).textTheme
      .copyWith( caption: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)) )
  ),

child: BottomNavigationBar(

  items: [
    BottomNavigationBarItem(
      icon: Icon( Icons.home, size: 30.0 ),
      title: Container()
    ),

    BottomNavigationBarItem(
      icon: Icon( Icons.assistant, size: 30.0 ),
      title: Container()
    ),

    BottomNavigationBarItem(
      icon: Icon( Icons.note_add, size: 30.0 ),
      title: Container()
    ),
  ],
),

);

  }


  Widget _botonesRedondeados(){

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.white, Icons.assistant, 'Asistencia' ),
            _crearBotonRedondeado( Colors.white, Icons.note_add, 'Nota'),
          ]
        ),
        
        
      ],
    );

  }


  

  Widget _crearBotonRedondeado( Color color, IconData icono, String texto ) {
 
 
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.7),
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: Icon( icono, color: Colors.blueAccent, size: 70.0 ),
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],
          ),
 
        ),
      ),
    );
  }



}
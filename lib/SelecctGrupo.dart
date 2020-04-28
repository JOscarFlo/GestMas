import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'AsistenciaPage.dart';


class GrupoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio'),),
      body: Stack(
        children: <Widget>[
          _fondoApp1(),
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRed(),
                boton(context),
              ],
            )    
          )
        ],
      ),
      

      bottomNavigationBar: _bottonNB(context)
    );

  }

  Widget _titulos(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Selcecionar Grupo',style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text('Seleccione el grupo al cual desea tomar la asistencia diaria',style: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold), ),
          ],
        ),
      ),
    );
  }

  Widget _bottonNB(BuildContext context){
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(255, 255, 255, 1.0),
        primaryColor: Colors.blueAccent,
        textTheme: Theme.of(context).textTheme.copyWith( caption: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0)))
      ),
    child: 
    BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment, size: 30.0,),
          title: Container(),
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, size: 30.0,),
            title: Container(),
          ),
      ],
    ),
    );
  }

  Widget _botonesRed(){
    return Table(

      children: [
        TableRow(
          children:[
            _crearSelector( Colors.orange, Icons.border_all, 'Este grado', ),
            _crearSelector( Colors.orange, Icons.border_all, 'Este grado', ),
          ]
        ),
      ],

    );

  }

  Widget boton(BuildContext context) {
      return Material(
      color: Colors.white,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: Icon(Icons.android),
            color: Colors.white,
            onPressed: () {

              Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => Asistencia()));

            },
          ),
        ),
      ),
    );
  }

  Widget _crearSelector(Color color, IconData icono, String texto){
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX:3,sigmaY:3),
        child: Container(
          height: 150.0,
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(29.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: 
                Icon (icono, color: Colors.white, size: 30.0,),
              ),
              Text(texto, style: TextStyle(color: Colors.pinkAccent),),
              SizedBox(height: 5.0,),
            ],
          ),
        ),
        ),
    );
  }

  Widget _fondoApp1(){
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(255, 255, 255  , 1.0), 
            Color.fromRGBO(88, 137, 200, 1.0),
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / -9,
      child: Container(
        height: 400.0,
        width: 400.0,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        gradient: LinearGradient(
          colors: [
            
            Color.fromRGBO(88, 137, 178, 1.0),
            Color.fromRGBO(150, 179, 247, 1),
          ],
        ),
        ),
      ),
    );


    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: 550.0,
          child: cajaRosa,
        ),
      ],
    );
  }
  
  Widget _fondoApp(){

    final cajaRosa = Transform.rotate(
      angle: -pi / -8.0,
      child: Container(
        height: 400.0,
        width: 400.0,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        gradient: LinearGradient(
          colors: [
            
            Color.fromRGBO(150, 179, 247, 1.0),
            Color.fromRGBO(88, 137, 178, 1.0),
          ],
        ),
        ),
      ),
    );


    return Stack(
      children: <Widget>[
        Positioned(
          top: 600.0,
          child: cajaRosa,
        ),
      ],
    );
  }
}
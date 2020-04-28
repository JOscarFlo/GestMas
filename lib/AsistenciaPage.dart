import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';


class Asistencia extends StatefulWidget {
  @override
  _AsistenciaState createState() => _AsistenciaState();
}

class _AsistenciaState extends State<Asistencia> {
    List<String> _estados = ['Asistio','No Asistio', 'Permiso'];
  String _selectedOpt = 'Asistio';
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
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
                _listadoAlumno(),
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
            Text('Lista de asistecia',style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text('Para marcar la asistencia o permiso, Seleccrione la opción correspondiente',style: TextStyle(color: Colors.black, fontSize: 12.5, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }


//bottomNavigationBar
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
          icon: Icon(Icons.home, size: 30.0,),
          title: Container(),
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check, size: 30.0,),
            title: Container(),
          ),
      ],
    ),
    );
  }




  Widget _listadoAlumno(){
    return Table(
      children:[
        TableRow(children: [
          _crearR('Anita Clara Yema Ortiz'),
          _crearDD(),//aca va el select
        ]
        ),
        
      ]
    );
  }


//Crear lista de opciones para el select
  List<DropdownMenuItem<String>> getOpcionesDD() {

    List<DropdownMenuItem<String>> lista = new List();

    _estados.forEach((estado) {
      lista.add(DropdownMenuItem(
        child: Text(estado),
        value: estado,
      ));
    });

    return lista;
  }


  //Select
  Widget _crearDD(){

    return DropdownButton(
      value: _selectedOpt,
      items: getOpcionesDD(),
      onChanged: (option){
        setState(() {
           _selectedOpt = option;
        });
      },
    );
  }
  Widget _crearR(String texto,){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
         _tableBG(),
         Text(texto, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold ),),
      ],
    );
  }
//box decoration
  Widget _tableBG(){
    return Container(
      height: 25.0,
      /*decoration: BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.8,), 
      borderRadius: BorderRadius.circular(10), 
      )*/
    );
  }
  
//FONDO DISEÑO
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
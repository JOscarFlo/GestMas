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
                _botonesRed(context),
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

  Widget _botonesRed(context){
    return Table(
      
      children: [
        TableRow(
          children:[
            _crearBoton1( context, Colors.white, Icons.person_add, '1 Grado' ),
            _crearBoton2( context, Colors.white, Icons.person_add, '2 Grado' ),
          ]),
          TableRow(
            children:[

          ]),
          TableRow(
            children:[
            _crearBoton3( context, Colors.white, Icons.person_add, '3 Grado' ),
            _crearBoton4( context, Colors.white, Icons.person_add, '4 Grado' ),
          ]),
          TableRow(
            children:[
            _crearBoton5( context, Colors.white, Icons.person_add, '5 Grado' ),
            _crearBoton6( context, Colors.white, Icons.person_add, '6 Grado' ),
          ]),
      ]
    );
  }


  Widget _crearBoton1( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton2( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton3( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton4( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton5( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton6( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton7( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton8( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
            ],

          ),
 
        ),
      ),
    );
  }
  Widget _crearBoton9( BuildContext context, Color color, IconData icono, String texto ) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(88, 137, 178, 0.7), //ACA SE LE CAMBIA EL COLOR AL FONDO
            borderRadius: BorderRadius.circular(30.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox( height: 12.0 ),
              CircleAvatar(
                backgroundColor: color,
                radius: 45.0,
                child: IconButton(
                  icon: Icon(icono, size: 50.0,),
                  onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Asistencia())
                      );
                  },
                )
              ),
              Text( texto , style: TextStyle( color: Colors.white, fontSize: 25.0 )),
              SizedBox( height: 5.0 )
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




import 'package:flutter/material.dart';
import 'package:gestmas/animacionLogo.dart';
import 'package:gestmas/homePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _loginFondo(context),
          _loginForm(context),
        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context){

    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          SafeArea(
            child: Container(
              height: 180.0,
            ),
          ),

          Container(
            width: size.width * 0.85,
            padding: EdgeInsets.symmetric( vertical: 50.0),
            margin: EdgeInsets.symmetric( vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 10.0),
                  spreadRadius: 3.0,
                )
              ]
            ),

          child: Column(
            children: <Widget>[
              Text('Ingrese sus credenciales', style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),),
              SizedBox( height: 60.0 ),
              _loginUsuario(),
              SizedBox( height: 30.0,),
              _loginPassword(),
              SizedBox( height: 30.0,),
              _loginBoton(context),
            ],
          ),

          ),
          SizedBox(height: 70.0),
          Text('© Derechos Reservados 2020, GestMas')

        ],
      ),
    );

  }


  Widget _loginUsuario(){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),

      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          icon: Icon( Icons.person_outline, color: Colors.blueGrey, ),
          hintText: '00000000-0',
          labelText: 'DUI'
        ),
      ),
    );

  }


    Widget _loginPassword(){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),

      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon( Icons.lock_outline, color: Colors.blueGrey, ),
          labelText: 'Contraseña',
        ),
      ),
    );

  }

  Widget _loginBoton(BuildContext context){

    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 80.0, vertical: 10.0),
        child: Text('Ingresar'),
      ),
      shape: StadiumBorder(),
      
      color: Colors.blueAccent,
      textColor: Colors.white,
      onPressed: (){
       
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => AnimacionPage()));
      }
    );

  }


  Widget _loginFondo(BuildContext context){

    final size = MediaQuery.of(context).size;

    final fondoAzul = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color> [
            Color.fromRGBO(150, 179, 247, 1.0),
            Color.fromRGBO(88, 137, 178, 1.0)
          ]
        )
      ),
    );



  return Stack(
    children: <Widget>[
      fondoAzul,
      //Positioned(top: -10.0, left: 30.0, child: circulo),
      //Positioned(top: 150.0, left: 180.0, child: circulo),
      //Positioned(bottom: -50.0, left: -10.0, child: circulo),
      //Positioned(bottom: -60.0, left: 200.0, child: circulo),

      Container(
        padding: EdgeInsets.only(top: 80.0),
        child: Column(
          children: <Widget>[
            //Icon( Icons.school, color: Colors.black, size: 100.0 ),
            Image.asset('assets/images/LogoGes.png',height: 100,),
            SizedBox( height: 10.0, width: double.infinity,),
            Text('GestMas', style: TextStyle( color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),)
          ],
        ),
      )

    ],
  );

  }
}
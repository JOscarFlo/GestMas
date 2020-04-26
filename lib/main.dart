import 'package:flutter/material.dart';
import 'package:gestmas/homePage.dart';
import 'loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestMas',
      debugShowCheckedModeBanner: false,

      // AQUI DEBEN AGREGAR LAS RUTAS
      initialRoute: 'login',
      routes: {
        'login'  : (BuildContext context) => LoginPage(),
        'home'   : (BuildContext context) => HomePage(),   
      },

    );
  }
}


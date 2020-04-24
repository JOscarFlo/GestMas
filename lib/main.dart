import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GestMas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(height: 40),
        textTheme: TextTheme(
          button: TextStyle(
            fontSize: 21,
            color: Colors.white,
          )
        )
      ),
      home: LoginPage(),
    );
  }
}


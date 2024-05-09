// main.dart
import 'package:flutter/material.dart';
import 'routes.dart';
import 'primera_pantalla.dart';
import 'segunda_pantalla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo de Navegación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: primeraRuta,
      routes: {
        primeraRuta: (context) => PrimeraPantalla(),
        segundaRuta: (context) => SegundaPantalla(),
      },
    );
  }
}

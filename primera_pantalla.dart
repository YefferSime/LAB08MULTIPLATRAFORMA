// primera_pantalla.dart
import 'package:flutter/material.dart';
import 'routes.dart';
import 'segunda_pantalla.dart';

class PrimeraPantalla extends StatefulWidget {
  @override
  _PrimeraPantallaState createState() => _PrimeraPantallaState();
}

class _PrimeraPantallaState extends State<PrimeraPantalla> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Ingrese un texto',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  segundaRuta,
                  arguments: _controller.text,
                );
              },
              child: Text('Ir a Segunda Pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}

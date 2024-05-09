// segunda_pantalla.dart
import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? texto = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Texto ingresado:',
              style: TextStyle(fontSize: 18),
            ),
            if (texto != null)
              Text(
                texto,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volver a la Primera Pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}

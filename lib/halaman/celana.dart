import 'package:flutter/material.dart';

class HalamanCelana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Celana'),
      ),
      body: Center(
        child: Text(
          'Ini adalah Halaman Celana',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

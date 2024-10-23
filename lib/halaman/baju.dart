import 'package:flutter/material.dart';

class HalamanBaju extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: Center(
        child: Text(
          'Halaman Baju',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

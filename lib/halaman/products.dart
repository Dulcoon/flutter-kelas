import 'package:flutter/material.dart';
import 'package:test_app/util/colection.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Produk 1',
      'price': 'Rp 100.000',
      'sold': '10 Terjual',
      'image': 'assets/images/foto 5.jpg'
    },
    {
      'name': 'Produk 2',
      'price': 'Rp 150.000',
      'sold': '5 Terjual',
      'image': 'assets/images/foto 2.jpg'
    },
    {
      'name': 'Produk 3',
      'price': 'Rp 150.000',
      'sold': '5 Terjual',
      'image': 'assets/images/foto 3.jpg'
    },
    {
      'name': 'Produk 4',
      'price': 'Rp 150.000',
      'sold': '5 Terjual',
      'image': 'assets/images/foto.jpg'
    },
  ];

  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Daftar Produk'),
        ),
        body: SafeArea(
          child: GridBuilderTwo(
            items: products,
          ),
        ));
  }
}

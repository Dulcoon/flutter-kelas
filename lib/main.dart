import 'package:flutter/material.dart';
import 'package:test_app/halaman/products.dart';
import 'package:test_app/main/bloc/main_bloc.dart';
import 'halaman/baju.dart';
import 'halaman/homepage.dart';
import 'halaman/celana.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => MainBloc(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/baju': (context) => HalamanBaju(),
          '/celana': (context) => HalamanCelana(),
          '/produk': (context) => ProductList(),
        },
      ),
    ),
  );
}

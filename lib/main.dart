import 'package:flutter/material.dart';
import 'package:test_app/halaman/products.dart';
import 'halaman/baju.dart';
import 'halaman/celana.dart';
import 'halaman/topi.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/baju': (context) => HalamanBaju(),
        '/celana': (context) => HalamanCelana(),
        '/produk': (context) => ProductList(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> names = [
    'Andi',
    'Budi',
    'Caca',
    'Dedi',
    'Eka',
    'Fani',
    'Gilang',
    'Hadi',
    'Ira',
    'Joko',
    'Kiki',
    'Lina',
    'Mira'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Column(
          children: [
            // Gambar di bagian atas
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 250,
              child: ClipRRect(
                child: Image.network(
                  'https://plus.unsplash.com/premium_photo-1681426669771-d2113672a49b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Y29tcHV0ZXIlMjBoYXJkd2FyZXxlbnwwfHwwfHx8MA%3D%3D', // Pastikan path ini benar
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            // Bagian tombol
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Button menggunakan GestureDetector
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/baju');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 31, 31, 31),
                        shape: BoxShape.rectangle,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        FontAwesomeIcons.shirt,
                        color: Colors.white,
                        // size: 30.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/celana');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 46, 48),
                        shape: BoxShape.rectangle,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        FontAwesomeIcons.shield,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/produk');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 46, 48),
                        shape: BoxShape.rectangle,
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.collections_sharp,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10), // Jarak antar section
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(names[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

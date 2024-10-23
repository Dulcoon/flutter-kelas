import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              product['image'], // Menggunakan 'productImage'
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name'], // Menggunakan 'productName'
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '${product['price']}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                    '${product['sold']}', // Menggunakan 'sold'
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridBuilderTwo extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const GridBuilderTwo({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Menentukan jumlah kolom
        childAspectRatio: 0.75, // Menjaga rasio aspek
        crossAxisSpacing: 8.0, // Jarak horizontal antar kartu
        mainAxisSpacing: 8.0, // Jarak vertikal antar kartu
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final product = items[index];
        return ProductCard(product: product);
      },
    );
  }
}

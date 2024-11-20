import 'package:flutter/material.dart';
import 'package:test_app/halaman/products.dart';
import 'package:test_app/main/bloc/main_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/halaman/user_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home Page'),
          ),
          body: IndexedStack(
            index: state.tabIndex, // Gunakan tabIndex dari MainState
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: ClipRRect(
                      child: Image.network(
                        'https://plus.unsplash.com/premium_photo-1681426669771-d2113672a49b?w=400&auto=format&fit=crop&q=60',
                        fit: BoxFit.fitWidth,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.error);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/baju');
                        },
                        child: const Icon(
                          FontAwesomeIcons.shirt,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/celana');
                        },
                        child: const Icon(
                          FontAwesomeIcons.shield,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/produk');
                        },
                        child: const Icon(
                          Icons.collections_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 13, // Jumlah nama
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                    ),
                  ),
                ],
              ),
              const Center(child: Text('Shop Page Content')),
              const UserPage(), // Tab untuk UserPage
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.tabIndex, // Ambil nilai dari state.tabIndex
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
            ],
            onTap: (index) {
              // Kirim event untuk mengganti tab
              BlocProvider.of<MainBloc>(context).add(ChangeTabEvent(index));
            },
          ),
        );
      },
    );
  }
}

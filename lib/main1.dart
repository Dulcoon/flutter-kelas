// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Center(
                child: Text(
              'My First God Damn App',
              style: TextStyle(color: Colors.white),
            )),
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.logout),
                color: Colors.white,
              ),
            ],
          ),
          body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.amber,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.all(10),
              child: Container(
                // width: 10,
                // height: 10,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color(0xff1f005c),
                          Color(0xff5b0060),
                          Color(0xff870160),
                          Color(0xffac255e),
                          Color(0xffca485c),
                          Color(0xffe16b5c),
                          Color(0xfff39060),
                          Color(0xffffb56b),
                        ]),
                    borderRadius: BorderRadius.circular(10)),
                // width: 10,
                // height: 10,
                child: Center(
                  child: Text(
                    'Nama: Valen\nNPM: 5220411200',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              )),
        ));
  }
}

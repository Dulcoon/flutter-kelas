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
            // appBar: AppBar(
            //   backgroundColor: Colors.deepPurple,
            //   title: Center(
            //       child: Text(
            //     'My First God Damn App',
            //     style: TextStyle(color: Colors.white),
            //   )),
            //   leading: Icon(
            //     Icons.menu,
            //     color: Colors.white,
            //   ),
            //   actions: [
            //     IconButton(
            //       onPressed: () {},
            //       icon: Icon(Icons.logout),
            //       color: Colors.white,
            //     ),
            //   ],
            // ),
            body: ListView(children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 80,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Michael',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 30),
                            ),
                            Text('5220411200 - INFORMATIKA')
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0, right: 0),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(100)),
                            child: ClipOval(
                                child: Image.asset(
                              'assets/images/foto.jpg',
                              width: 10,
                              height: 10,
                              fit: BoxFit.cover,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 30),
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 5, 194, 251),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Center(
                        child: Text(
                          'Gatau Mumettt',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 90,
                  // margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        // decoration: BoxDecoration(border: Border(top: 20)),
                        height: 45,
                        // color: Colors.white,
                      )),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 1.0))),
                        width: double.infinity,
                        height: 45,
                        child: Center(
                          child: Text(
                              'Kalender saat ini Perkuliahan Tahap 1 (7 Minggu)'),
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ])));
  }
}

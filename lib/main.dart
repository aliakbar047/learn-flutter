import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green 
      ),
      home: const HomeScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title:Text(
      //       'Muhammed Akbar Ali'
      //     )
      //   ),
      // ),
    );
  }
}

class HomeScreen extends StatelessWidget {

  const HomeScreen({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(),
      // body: Text('muhammed akbar ali'),
      body: SafeArea(
        child: Center(
          child: Text(
            'Akbar Ali', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/learn/class4.dart';
import 'package:sample_project/list_view.dart';
import 'package:sample_project/whatsapp_ui.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {

  const MyApp({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red, 
      ),
      // home: WhatsappUiScreen(),
      home: FormScreen(),
      routes: {
        'list_screen': (ctx){
          return ListViewScreen();
        },
        'whatsapp_ui': (ctx){
          return WhatsappUiScreen();
        },
      },
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


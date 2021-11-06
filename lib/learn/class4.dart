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
        primaryColor: Colors.red, 
      ),
      home: HomeScreen(),
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

class HomeScreen extends StatefulWidget {

  HomeScreen({ Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _textController = TextEditingController();

  String _dsiplayText = 'Text will be displayed here.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          // padding: EdgeInsets.all(20),
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 50,
            bottom: 50
          ),
          child: Container(
            color: Colors.red[100],
            child: Column(
              children: [
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type something',
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    // Get Data
                    print(_textController.text);
                    setState(() {
                      _dsiplayText = _textController.text;
                    });
                  }, 
                  child: Text('Click Here'),),
                Text(_dsiplayText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
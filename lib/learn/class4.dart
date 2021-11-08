import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/whatsapp_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      home: FormScreen(),
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

class FormScreen extends StatefulWidget {

  FormScreen({ Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  final _textController = TextEditingController();

  String _dsiplayText = 'Text will be displayed here.';

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
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
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type something',
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    // Get Data
                    // print(_textController.text);
                    // setState(() {
                    //   _dsiplayText = _textController.text;
                    // });
                    saveDataStorage();
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

  Future<void> saveDataStorage() async{
    print(_textController.text);

    final sharedPrefs = await SharedPreferences.getInstance();

    await sharedPrefs.setString('saved_value', _textController.text);
  }

  Future<void> getSavedData( BuildContext context) async{
    final sharedPrefs = await SharedPreferences.getInstance();

    final savedValue = sharedPrefs.getString('saved_value');

    if(savedValue != null){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => WhatsappUiScreen())
      );
    }

  }
}
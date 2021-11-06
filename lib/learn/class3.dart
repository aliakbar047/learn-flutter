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
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(),
      // body: Text('muhammed akbar ali'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
                child: Container(
                  color: Colors.yellow,
                  // width: double.infinity,
                  // height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    const Text(
                      'Akbar Ali', 
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){
                            print("Text Button Clicked");
                          }, child: const Text("Click Me")
                        ),
                        IconButton(onPressed: (){

                          }, icon: const Icon(Icons.mic)
                        ),
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                        print("Elevated Button Clicked");
                      }, child: const Text('Click Me')
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue, width: 10),
                ),
                child: Center(
                  child: Text(
                    "welcome"
                  ),
                ),
              )
            ),
            Expanded(
                          child: Container(
                color: Colors.red,
                // width: double.infinity,
                // height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    const Text(
                      'Akbar Ali', 
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){
                            print("Text Button Clicked");
                          }, child: const Text("Click Me")
                        ),
                        IconButton(onPressed: (){

                          }, icon: const Icon(Icons.mic)
                        ),
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                        print("Elevated Button Clicked");
                      }, child: const Text('Click Me'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
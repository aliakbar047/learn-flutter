import 'package:flutter/material.dart';
import 'package:sample_project/screen_home.dart';


class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView sample project'),
      ),
      body: SafeArea(
        // child: ListView(
        //   children: List.generate(
        //     100,
        //     (index) {
        //       return Column(
        //         children: [
        //           Text('Text $index'),
        //           Divider(),
        //         ],
        //       );
        //     },
        //   ),
        // ),
        child: ListView.separated(
          itemBuilder: (ctx, index){
            return ListTile(
              title: Text('Text $index'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx){
                    return HomeScreen(name: 'Text $index');
                  },),
                );
              },
            );
          }, 
          separatorBuilder: (ctx, index){
            return Divider();
          }, 
          itemCount: 30,
        ),
      ),
    );
  }
}
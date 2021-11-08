import 'package:flutter/material.dart';
import 'package:sample_project/list_view.dart';


class WhatsappUiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp Ui'),
        leading: ElevatedButton(
          onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
            //   return ListViewScreen();
            //   // Navigator.of(context).pop(),
            // },),);
            Navigator.of(context).pushNamed('list_screen');
          }, 
          child: const Text('Go'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (cxt, index){
            return ListTile(
              title: Text('Person $index'),
              subtitle: Text('Message $index'),
              leading: CircleAvatar(
                radius: 30,
                // backgroundColor: Colors.green,
                // backgroundImage: NetworkImage('https://images.freeimages.com/images/large-previews/277/doggy-1382866.jpg'),
                backgroundImage: AssetImage('assets/images/img73.jpg'),
              ),
              trailing: Text('1$index:00 PM'),
            );
          }, 
          separatorBuilder: (cxt, index){
            return Divider();
          }, 
          itemCount: 30,
        ),
      ),
      
    );
  }
}
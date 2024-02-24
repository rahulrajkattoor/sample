import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:sample/whatsapp%20clone/community%20page.dart';
import 'package:sample/whatsapp%20clone/whatsapp%20chat%20page.dart';

void main(){
  runApp(MaterialApp(home: whatsapp(),debugShowCheckedModeBanner: false,));
}
class whatsapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar( title: Text("WhatsApp",style: TextStyle(fontSize: 20),),actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search_sharp)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New broadcast")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred messages")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Settings"))
            ];
          })
        ], bottom: TabBar(
          indicatorColor: Colors.teal,
          labelColor: Colors.grey,

          tabs: [
            Tab(
              icon: FaIcon(FontAwesomeIcons.peopleGroup),),
            Tab(text: "Chats",),
            Tab(text: "Updates",),
            Tab(text: "Status",)
          ],),backgroundColor: Colors.teal,),
        body: TabBarView(
          children: [
            community(),
            chatpage()
          ],
        ),
      ),
    );



  }

}
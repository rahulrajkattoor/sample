import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: example(),
  debugShowCheckedModeBanner: false,));
}
class example extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.camera_alt,color: Colors.white70,),
            SizedBox(width: 20,),
            Icon(Icons.search,color: Colors.white70,),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("settings"))
                
              ];
              
            })
          ],
          bottom: TabBar(indicatorColor: Colors.teal,
              tabs: [
            Tab(
              icon: Icon(Icons.person),
            ),
            Tab(
              child: Text("Chats",style: TextStyle(color: Colors.white70),),
            ),
            Tab(
              child: Text("Updates",style: TextStyle(color: Colors.white70)),
            ),
            Tab(
              child: Text("Calls",style: TextStyle(color: Colors.white70),),
            )
          ]
          )
          
        ),
        drawer:
          Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.teal),
                  accountName: Text("Rahul",style: TextStyle(color: Colors.black),), accountEmail: Text("rahulrajkattoor",style: TextStyle(color: Colors.black),),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png"),),)
              ],
            ),

          ),
        ),



    );
  }
  
}
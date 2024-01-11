import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: tapbar(),
  debugShowCheckedModeBanner: false,));
}
class tapbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("Tapbar"),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("setting")),
              PopupMenuItem(child: Text("Logout")),
              PopupMenuItem(child: Text("Invite")),
            ];
          })
        ],
        bottom: TabBar(indicatorColor: Colors.cyan,
          unselectedLabelColor: Colors.teal,
          labelColor: Colors.black,
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
          Tab(
            child: Text("chat"),
          ),
          Tab(
            child: Text("status"),
          ),
          Tab(
            child: Text("contact"),
          )
        ],),),
      ),
    );
  }

}
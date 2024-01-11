import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



import 'listbuilder.dart';
import 'listseperator.dart';
import 'myapp.dart';
void main(){
  runApp(MaterialApp(home: tapui(),
  debugShowCheckedModeBanner: false,));
}
class tapui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 3,
     child: Scaffold(
       appBar: AppBar(title: Text("Tabs Demo"),
       actions: [
        PopupMenuButton(itemBuilder: (context){
          return[
            PopupMenuItem(child: Text("Login")),
            PopupMenuItem(child: Text("Settings")),
            PopupMenuItem(child: Text("Invite"))
          ];

        }),

       ],
       bottom: TabBar(tabs: [
         Tab(
            icon: Icon(Icons.call),child: Text("Call",style:GoogleFonts.abhayaLibre(),),

         ),
         Tab(
           icon:Icon(Icons.call_missed),child: Text(" Missed",style: TextStyle(color: Colors.black),),

         ),
         Tab(
           icon: Icon(Icons.call_received),child: Text("Recieved"),
         )
       ],

       ),
       ),
       body: TabBarView(
         children: [
           myapp122(),
           listseperator(),
           listbuilder()
         ],
       ),
     ),
   );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: call(),));
}
class call extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [Card(color: Colors.red,
         child: ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/instagram.png"),),
           title: Text("Rahul"),
           subtitle: Text("8086140445"),
           trailing: Icon(Icons.call),
         ),
       )


       ],
     ),
   );
  }

}
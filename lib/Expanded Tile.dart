import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expandedtile(),));
}
class expandedtile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpansionTile(title: Text("ExpansionTile"),
      subtitle: Text("Expanded this.tile"),
      children: [
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.red,),
          title: Text("red"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.blue,),
          title: Text("blue"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.amber,),
          title: Text("Amber"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.green,),
          title: Text("green"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.yellow,),
          title: Text("Yellow"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.purpleAccent,),
          title: Text("purple"),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.orange[100],),
          title: Text("orange"),
        )
      ],),

    );
  }

}
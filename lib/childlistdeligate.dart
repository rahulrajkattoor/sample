import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: list(),));
}
class list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.custom(childrenDelegate: SliverChildListDelegate(
    [
         Card(color: Colors.cyan,
          child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png"),),
           title: Text("rahul"),
            subtitle: Text("8086140445"),
            trailing: Icon(Icons.call),
        ),
        )
      ]


    )),);
  }

}
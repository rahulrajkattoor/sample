import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: homescreen(),
  debugShowCheckedModeBanner: false,));
}
class homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(color: Colors.blue,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/facebook.png"),),
            title: Text("Rahul"),
            subtitle: Text("8086140445"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.cyan,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/facebook.png"),),
            title: Text("Rajesh"),
            subtitle: Text("9745510357"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.blueGrey,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/facebook.png"),),
            title: Text("beena"),
            subtitle: Text("9961671080"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.greenAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/facebook.png"),),
            title: Text("riya"),
            subtitle: Text("70256161080"),
            trailing: Icon(Icons.call),
          ),
        )
      ],),
    );

  }

}
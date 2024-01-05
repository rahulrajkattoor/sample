import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: extendui(),
  debugShowCheckedModeBanner: false,));
}
class extendui extends StatelessWidget {
  var icon = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet,
    Icons.backup,
    Icons.book,
    Icons.camera,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.notes,
    Icons.music_note
  ];
  var name = [
    "Home",
    "Email",
    "Alarm",
    "Wallet",
    "Backup",
    "Book",
    "Camera",
    "Person",
    "Print",
    "Phone",
    "Notes",
    "Music"
  ];
  var color = [
    Colors.orange,
    Colors.black26,
    Colors.deepOrangeAccent,
    Colors.pink,
    Colors.deepPurple,
    Colors.green,
    Colors.pinkAccent,
    Colors.brown,
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 5,crossAxisSpacing: 5),
          itemBuilder: (context, intex) {
            return Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: color[intex],
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Icon(icon[intex]),
                    Text("${name[intex]}")
                  ],
                ),
              ),
              

            );
          },itemCount: name.length),
    );
  }
}

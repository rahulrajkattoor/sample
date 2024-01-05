import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view"),
        backgroundColor: Colors.blue,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
        children: [
          Container(
            child: Column(
              children: [
                Center(
                    child: Icon(
                  Icons.home,
                  size: 50,
                )),
                Text("Home"),
              ],
            ),
            color: Colors.brown,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.email,
                  size: 50,
                ),
                Text("Email")
              ],
            ),
            color: Colors.black12,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.alarm,
                  size: 50,
                ),
                Text("Alarm")
              ],
            ),
            color: Colors.orange,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.wallet,
                  size: 50,
                ),
                Text("wallet")
              ],
            ),
            color: Colors.pink,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.backup,
                  size: 50,
                ),
                Text("Backup")
              ],
            ),
            color: Colors.purple,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.book,
                  size: 50,
                ),
                Text("Book")
              ],
            ),
            color: Colors.green,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.camera,
                  size: 50,
                ),
                Text("Camera")
              ],
            ),
            color: Colors.pink,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 50,
                ),
                Text("Person")
              ],
            ),
            color: Colors.brown,
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.print,
                  size: 50,
                ),
                Text("Print")
              ],
            ),
            color: Colors.green,
          ),
          Container(child: Column(
            children: [Icon(Icons.phone,size: 50,),Text("Phone")],
          ),color: Colors.pinkAccent,),
          Container(child: Column(
            children: [
              Icon(Icons.notes,size: 50,),Text("Notes")
            ],
          ),color: Colors.purpleAccent,),
          Container(child: Column(
            children: [Icon(Icons.music_note,size: 50,),Text("Music")],
          ),color: Colors.red,)
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawer(),
  ));
}

class drawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.blueAccent),
              accountName: Text("Rahul",style: TextStyle(color: Colors.black),),
              accountEmail: Text("rahulrajkattoor@gmail.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/icons/instagram.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                    backgroundImage: AssetImage(
                        "aassets/icons/Iconarchive-Dog-Breed-Golden-Retriever.512.png")),

              ],

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Person"),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Update"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}

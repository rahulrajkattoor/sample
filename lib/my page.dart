import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: app(),
  ));
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 70,),
            Text(
              "Login page",
              style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 50,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 60, left: 60),
              child: TextField(decoration: InputDecoration(suffix: Icon(Icons.person,
              ),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: "username",
              labelText: "name")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60,top: 20,bottom: 60),
              child: TextField(decoration: InputDecoration(suffix: Icon(Icons.visibility_off),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              hintText: "password",
              labelText: "password"),
              )
            ),

            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login page",
                  style: TextStyle(
                      color: Colors.cyanAccent,

                      ),
                )),
            TextButton(onPressed: () {}, child: Text("invalid button")),
          ],
        ),
      ),
    );
  }
}

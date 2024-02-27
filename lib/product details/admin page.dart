import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/product%20details/product%20page.dart';
void main(){
  runApp(MaterialApp(home: admin(),));
}
class admin extends StatefulWidget{
  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>product()));
              }, child: Text("Add Product")),
            )
          ],
        ),
      ),
    );
  }
}
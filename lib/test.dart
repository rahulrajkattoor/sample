import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Myapp(),));
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Myapp"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(color: Colors.blue,
          child: ListTile(


          ),
        );
      },itemCount: 20,),
    );
  }
}

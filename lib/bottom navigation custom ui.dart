import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
void main(){
  runApp(MaterialApp(home: custom(),));
}
class custom extends StatefulWidget{
  @override
  State<custom> createState() => _customState();
}

class _customState extends State<custom> {
  var index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Salmon"),),
      bottomNavigationBar: SalomonBottomBar(currentIndex: index,
          onTap: (i) => setState(() => index = i),

        items: [
        SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home"),selectedColor: Colors.blue),
        SalomonBottomBarItem(icon: Icon(Icons.add), title: Text("Add"),selectedColor: Colors.pink)
      ],),

    );
  }
}
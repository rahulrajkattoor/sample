import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class ui extends StatelessWidget {
  var title = ["pasta", "Maggi", "cake", "pancake", "pizza", "Burgers" ,"Fries"];
  var image = [
    "assets/icons/img.png",
    "assets/icons/Icons8-Ios7-Food-Noodles.512 (1).png",
    "assets/icons/Iconarchive-Fat-Sugar-Food-Cake.512.png",
    "assets/icons/Artbees-Chocolate-Obsession-Cup-Cake.256.png",
    "assets/icons/Aha-Soft-Desktop-Buffet-Pizza.256.png",
    "assets/icons/Aha-Soft-Food-Burger.256.png",
    "assets/icons/Iconarchive-Fat-Sugar-Food-French-Fries.512.png"
  ];
  var time=["30 min","2 min","45 min","10 min","60 min","45 min","30 min"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Book"),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
            child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("${image[index]}"),

          ),
              title: Text("${title[index]}"),
              trailing: Text("${time[index]}"),
        ));
      },itemCount: title.length,),
    );
  }
}

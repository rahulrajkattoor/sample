import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: myapp122(),));
}


class myapp122 extends StatelessWidget {
  var name = ["rahul", "rajesh", "arjun", "afin", "george"];
  var image = [
    "assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png",
    "assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png",
    "assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png",
        "assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png",
    "assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png"
  ];
  var title=["rahul@k","rajesh@r","arjun@j","afindq","george@1"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
              title: Text(name[index]),
              subtitle: Text(title[index]),
            ),

          );
        },itemCount: name.length,)
    );
  }

}
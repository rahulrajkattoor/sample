import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listviewcustom(),
  debugShowCheckedModeBanner: false,));
}
class listviewcustom extends StatelessWidget {
  var name = ["rahul", "rajesh", "beena"];
  var phone = ["2255", "3344", "4567"];
  var image = [
    "assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png",
    "assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png",
    "assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
            return Card(color: Colors.cyan,
              child: ListTile(
                  leading:Image(image: AssetImage("${image[index]}"),),
                title: Text("${name[index]}"),
                subtitle: Text("${phone[index]}"),
                trailing: Icon(Icons.call),

              ),);
          },childCount:name.length,
      )),
    );
  }

}
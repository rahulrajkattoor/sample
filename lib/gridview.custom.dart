import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridcustom(),));
}
class gridcustom extends StatelessWidget {
  var image=["assets/icons/facebook.png",
      "assets/icons/facebook.png",
      "assets/icons/facebook.png",
      "assets/icons/facebook.png"];
  var title=["1",
      "2",
      "3",
      "4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context, intex) {
            return Card(child: Column(
              children: [
                Image(image: AssetImage(image[intex])),
                Text(title[intex])
              ],
            ),);
          },childCount: image.length)),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: example(),));
}
class example extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.black,
        child: Column(
          children: [
            Image(image: AssetImage("assets/icons/Man-Fitness-Wallpaper-HD.jpg"),height: 500,)
          ],
        ),
      ),
    );
  }

}
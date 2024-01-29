
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: vegetablesui1(),));
}
class vegetablesui1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: [
          
          ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Image(image: AssetImage("assets/icons/book img.png",))),
          ClipRRect(borderRadius: BorderRadius.circular(20),
              child:Image(image: AssetImage("assets/icons/book img.png")))
        ], options: CarouselOptions(
        height: 400,
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),

      )
    );
  }

}
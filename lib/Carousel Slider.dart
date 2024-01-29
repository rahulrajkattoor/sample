import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main(){
  runApp(MaterialApp(home: Carousel(),));
}
class Carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Image(image: AssetImage("assets/icons/omen walpepper.jpeg")),
        Image(image: AssetImage("assets/icons/omen walpepper.jpeg")),
        Image(image: AssetImage("assets/icons/omen walpepper.jpeg")),
        Image(image: AssetImage("assets/icons/omen walpepper.jpeg"))
      ],  options: CarouselOptions(
        height: 500,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        scrollDirection: Axis.vertical,
        autoPlay: true,
      ),

      )
    );
  }

}
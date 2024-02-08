import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: slider(),));
}
class slider extends StatefulWidget{
  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double slidervalue=100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slider(value: slidervalue,
        max: 100,
        activeColor: Colors.black12,
        onChanged: (double value) {
        setState(() {
          slidervalue=value;
        });
      },

      ),

    );
  }
}
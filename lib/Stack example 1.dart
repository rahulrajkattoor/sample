import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: example1(),
  ));
}

class example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.white,

        ),


        Container(
          color: Colors.blueAccent,
          height: 200,
          width: 505,

        ),
        Positioned(
          bottom: 475,
          top: 125,
          right: 210,
          width: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
                bottomLeft: Radius.circular(70),
                topRight: Radius.circular(70),
                topLeft: Radius.circular(70)),
            child: Container(
              color: Colors.blueAccent,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png"),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stackexample(),
  ));
}

class stackexample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 300,
              width: 300,
            ),
            Positioned(
              child: Container(
                color: Colors.red,




              ),
              height: 100,
              width: 100,
              right: 40,
              bottom: 70,
            ),
            Positioned(
              child: Container(
                color: Colors.yellow,

              ),
              height: 100,
              width: 100,
              left: 40,
              bottom: 70,

            )
          ],
        ),
      ),
    );
  }
}

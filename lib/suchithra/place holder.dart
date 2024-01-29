import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: PlaceHolder(),));
}
class PlaceHolder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Title'),
            Text('This is text'),
            Placeholder(),
            Placeholder(
              color: Colors.pink,
              strokeWidth:4,
              fallbackHeight: 200,
              fallbackWidth: 200,
            )

          ],
        ),
      ),
    );
  }

}
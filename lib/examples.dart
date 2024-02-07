import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Dismisable.dart';

void main(){
  runApp(MaterialApp(home: myapp(),
    ));
}
class myapp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(height: 100,width: 100,color: Colors.red,
          child: GestureDetector(
          onTap:()=> dismisable(),
          ),
        ),
      ),

    );
  }

}
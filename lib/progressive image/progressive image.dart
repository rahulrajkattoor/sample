import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progressive_image/progressive_image.dart';

void main() {
  runApp(MaterialApp(
    home: image(),
  ));
}

class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            
        child:ProgressiveImage(
          placeholder: AssetImage('assets/icons/loading gif.png'),
          thumbnail:NetworkImage('https://images.unsplash.com/photo-1516912481808-3406841bd33c?q=80&w=1044&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          image: NetworkImage('https://images.unsplash.com/photo-1516912481808-3406841bd33c?q=80&w=1044&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          width: 500,
          height: 300,


        )
          ));
  }
}

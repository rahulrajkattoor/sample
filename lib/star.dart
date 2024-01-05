
import 'dart:async';
import 'dart:js';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/demo.dart';
void main()
{
  runApp(MaterialApp(home: ui(),));
}
class ui extends StatelessWidget{
  void main()
  {
    Timer(Duration(seconds: 5), ()
    {Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=>demo()));
    });
    }
  @override
  Widget build(BuildContext context) {
  return Scaffold(

  );
  }

}
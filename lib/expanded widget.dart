import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: expanded(),));
}
class expanded extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Row(
        children: [
          Expanded(
            child: Container(color:Colors.pink,
            height: 100,
            width: 100,),
          ),
          Expanded(
            child: Container(color: Colors.redAccent,
            height: 100,
            width: 100,),
          ),
          Expanded(
            child: Container(color: Colors.amber,
            height: 100,
            width: 100,),
          )
        ],
       
           ),
     ),

    );
  }

}
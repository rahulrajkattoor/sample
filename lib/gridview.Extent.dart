import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewextend(),));
}
class gridviewextend extends StatelessWidget{
  var icon =[Icons.flutter_dash,Icons.android,Icons.ios_share];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.extent(maxCrossAxisExtent: 200,children:List.generate(3, (index){
       return Card(
         child: Column(
           children: [
             Icon(icon[index])
           ],
         ),
       );
     }),),
   );
  }

}
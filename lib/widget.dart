import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ui(),));
}
class ui extends StatelessWidget{
  var name=["rahul","arjun"];
  var color=[Colors.orange,Colors.blue];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
         itemBuilder: (context,index){
       return Card(color: color[index],
         child: Text("${name[index]}"),

       );
         },itemCount: name.length,)
   );
  }

}
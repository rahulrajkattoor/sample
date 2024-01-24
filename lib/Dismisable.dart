import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: dismisable(),));
}
class dismisable extends StatelessWidget{
  var datas=<String>["Data 1","Data 2","Data 3"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(itemCount: datas.length,
         itemBuilder: (context,index){
       return Dismissible(key: ValueKey(datas), child: ListTile(
         title: Center(child: Text(datas[index]),),
       ),
       background: Container(
         color: Colors.red,
       ),secondaryBackground: Container(color: Colors.green,),);
     },),
   );
  }

}
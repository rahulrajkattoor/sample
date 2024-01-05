import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ui(),
  debugShowCheckedModeBanner: false,));
}
class ui extends StatelessWidget{
  var list=["A","B","c","D","E","F","G","H","I","J","K"];
  var seperator=["seperator 1","seperator 2","seperator 3","seperator 4","seperator 5","seperator 6","seperator 7","seperator 8","seperator 9","seperator 10"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Listview.seperator()"),backgroundColor: Colors.green,),
     body: ListView.separated(itemBuilder:(context,index){
       return Card(
         child: ListTile(
           title: Text("${list[index]}"),


         ),
       );
     }, separatorBuilder: (context,index){
       return Card(color: Colors.white12,
         child: ListTile(
           title: Text("${seperator[index]}"),
         ),



       );
     }, itemCount: 10)
   );
  }

}
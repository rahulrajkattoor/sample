import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class newhome extends StatelessWidget{
  var mail=["rahulraj@1","rajesh@27","riya@321","beena@654"];
  var name=["rahul","rajesh","riya","beena"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Center(child: Text("Myapp",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w200),
       ),
       ),
       actions: [
         Icon(Icons.delete,)
       ],
       ),
     body:ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
       return Container(
         child: ListTile(
           title: Text(mail[index]),
           subtitle: Text(name[index]),
           trailing:Row(
             mainAxisSize: MainAxisSize.min,
             children: [
               TextButton(onPressed: (){}, child: Text("Add")),
               TextButton(onPressed: (){}, child: Text("Delete"))

             ],
           )

         ),


       );
     },childCount: name.length))
   );
  }

}
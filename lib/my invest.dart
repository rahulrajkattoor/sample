import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: myapp(),
  debugShowCheckedModeBanner: false,));
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(
         slivers: [
           SliverAppBar(
             floating: true,
             pinned: true,
             backgroundColor: Colors.blue,
             title: Text("Hi",style: TextStyle(fontStyle:FontStyle.italic),),
             actions: [
               PopupMenuButton(itemBuilder: (context){
                 return[
                   PopupMenuItem(child: Text("Setting"))
                 ];
               })
             ],
             bottom: AppBar(
               backgroundColor: Colors.blue,
               elevation: 0,
               title: Container(
                 color: Colors.white,
                 height: 40,
                 width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.shopping_cart),
                    hintText: "Search"
                  ),
                ),
               ),
               bottom: ,


             ),
           ),


         ],

       ),
     );
  }

}



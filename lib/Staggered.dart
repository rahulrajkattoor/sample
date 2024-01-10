import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: app(),
  debugShowCheckedModeBanner: false,));
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: StaggeredGrid.count(
         crossAxisCount: 4,
         mainAxisSpacing: 4,
         crossAxisSpacing: 4,
         children:  [
           StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child: Container(child:Column(children: [
               Image(image: AssetImage("assets/icons/instagram.png"),height: 150,width: 150,),
               Text("instagram"),


             ],),
             ),
           ),
           StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child: Container(color: Colors.blue,child:Column(children: [
               Image(image: AssetImage("assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png"),
                 height: 150,width: 150,),
               Text("Family"),

             ],),),
           ),
           StaggeredGridTile.count(
             crossAxisCellCount: 1,
             mainAxisCellCount: 2,
             child: Container(color: Colors.grey,
               child: Column(
                 children: [
                   Image(image: AssetImage("assets/icons/Iconarchive-Dog-Breed-Golden-Retriever.512.png"),height: 150,width: 150,),
                   Text("Dog")
                 ],
               ),
             ),
           ),
           StaggeredGridTile.count(
             crossAxisCellCount: 1,
             mainAxisCellCount: 2,
             child: Container(color: Colors.brown,
                 child:Column(
               children: [
                 Image(image: AssetImage("assets/icons/Aha-Soft-Food-Burger.256.png"),height: 150,width: 150,fit: BoxFit.fill,),
                 Text("Burger"),

               ],
             )),
           ),
       
       
       
       
       
       
         ],
       
          ),
     ));
  }

}
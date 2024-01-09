import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: app(),));
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
             child: Container(child: Text(""),color: Colors.orange,),
           ),
           StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child: Container(child: Text(""),color: Colors.green,),
           ),
           StaggeredGridTile.count(
             crossAxisCellCount: 2,
             mainAxisCellCount: 2,
             child: Container(child: Text(""),color: Colors.brown,),
           ),
       
       
       
       
       
       
         ],
       
          ),
     ));
  }

}
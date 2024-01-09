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
     body: StaggeredGrid.count(
       crossAxisCount: 4,
       mainAxisSpacing: 4,
       crossAxisSpacing: 4,
       children:  [
         StaggeredGridTile.count(
           crossAxisCellCount: 1,
           mainAxisCellCount: 1,
           child: Container(child: Text(""),color: Colors.yellow,),
         ),
         StaggeredGridTile.count(
           crossAxisCellCount: 2,
           mainAxisCellCount: 2,
           child: Container(child: Text(""),color: Colors.orange,),
         ),

       ],

   ));
  }

}
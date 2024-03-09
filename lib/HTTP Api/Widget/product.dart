import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Product model.dart';

class ProductCustom extends StatelessWidget{
  final Product productList;
  ProductCustom(this.productList);
  @override
  Widget build(BuildContext context) {
   return SizedBox(
     height: MediaQuery.of(context).size.height*8,
     child: Padding(
       padding: EdgeInsets.all(8.0),
       child: Column(
         children: [
           Container(height: 80,
           width: double.infinity,
           clipBehavior: Clip.antiAlias,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
           child: CachedNetworkImage(
             imageUrl: productList.image,
             fit: BoxFit.fitHeight,
           ),),
           SizedBox(
             height: 10,
             
           ),
           Text(productList.title,maxLines: 2,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
           SizedBox(height: 9,),
           if(productList.rating !=null)
             Container(decoration: BoxDecoration(color: Colors.blue),
             child: Row(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text(productList.rating!.rate.toString(),style: TextStyle(color: Colors.white),),
                 Icon(Icons.star,size: 16,color: Colors.white,)
               ],
             ),),
           
         ],
       ),
     ),

   );
  }

}
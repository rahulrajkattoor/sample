import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sample/HTTP%20Api/Controler/product%20controler.dart';

import 'Widget/product.dart';
void main(){
  runApp(GetMaterialApp(home: httphome(),));
}
class httphome extends StatelessWidget{
  final ProductController controller=Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("products"),
      actions: [
        Icon(Icons.shopping_cart)
      ],),
      body: Column(
        children: [
         Padding(padding: EdgeInsets.all(15),
         child: Row(
           children: [
             Expanded(child: Text("Shop Now",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)),

           ],
         ),),
          Expanded(child: Obx(() {
            if(controller.isLoading.value){
              return Center(child: CircularProgressIndicator(), );
            }else{
              return GridView.builder(
                itemCount:controller.productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
                  itemBuilder: (context,index){
                return ProductCustom(controller.productList[index]);
                  });
            }
          }))
        ],
      ),
    );
  }

}



import 'package:flutter/material.dart';
import 'package:sample/dummy%20products/product%20list.dart';
import 'package:sample/dummy%20products/productdetails.dart';
import 'package:sample/login%20with%20ecomerce.dart';



void main(){
  runApp(MaterialApp(home:splash1(),
    routes:{
      'secondpage': (context) =>productdetils()},));
}

class Mainscreen1 extends StatefulWidget{
  @override
  State<Mainscreen1> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dummyproducts.map((product)=>GestureDetector(
          child: Center(
            child: Container(color: Colors.green[450],
              height: 150,width: 250,
              child: Card(
                child: Column(
                  children: [

                    Text("${product["name"]}"),
                    Image(image: AssetImage("${product["image"]}"),height: 80,width: 80,),
                  ],
                ),
              ),
            ),
          ),
          onTap:()=>getnote(context,product["id"]),
        )).toList(),
      ),
    );
  }

  getnote(BuildContext context, product) {
    Navigator.of(context).pushNamed('secondpage', arguments:product );
  }
}
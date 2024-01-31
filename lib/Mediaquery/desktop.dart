import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydesktopbody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Desktop"),),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0),
                child: AspectRatio(
                  aspectRatio: 16/6,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.deepPurple[400],
                  ),
                ),),
                Expanded(child: ListView.builder(itemBuilder: (context,index){
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[300],
                      height: 120,
                    ),
                  );
                }))
              ],
            ))
          ],
        ),
      ),
    );
  }

}
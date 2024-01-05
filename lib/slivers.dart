import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: slivers(),
    debugShowCheckedModeBanner: false,
  ));
}

class slivers extends StatelessWidget {
  var name=["rahul","raju","chandru","navaneeth","kiran","suchithra","arya"];
  var color=[Colors.greenAccent,Colors.yellowAccent,Colors.orange,Colors.red,Colors.teal,Colors.brown,Colors.indigo];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.cyan,
          floating: true,
          pinned: true,
          title: Text("Custom Appbar"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
          ],
          bottom: AppBar(backgroundColor: Colors.cyan,
            elevation: 0,
            title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                )),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
          return Card(color: color[index],
            child: ListTile(
              title: Text("${name[index]}"),

            ),

          );
        },childCount: name.length))
      ]

    ));
  }
}



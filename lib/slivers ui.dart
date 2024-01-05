import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class ui extends StatelessWidget {
  var name = ["This is a awesome shopping platform","This is a awesom shopping platform"];
  var color=[Colors.white,Colors.red];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurpleAccent,
            floating: true,
            pinned: true,
            title: const Text("Kindacode.com"),
            foregroundColor: Colors.white,
            actions: [
              IconButton(onPressed: () {}, icon:const Icon(Icons.shopping_cart))
            ],
            bottom: AppBar(
              backgroundColor: Colors.deepPurpleAccent,
              elevation: 0,
              title: Container(
                color: Colors.white,
                height: 40,
                width: double.infinity,
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt),
                      hintText: "search for something"),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Card(color: color[index],
              child: Container(child:
                  Center(child: Text("${name[index]}")),
                height: 300,


              ),





              );




          }, childCount:color.length)),
        ],
      ),
    );
  }
}

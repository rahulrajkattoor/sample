import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: facebook(),
    debugShowCheckedModeBanner: false,
  ));
}

class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black87,
              pinned: true,
              floating: true,
              title: Text(
                "facebook",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              actions: [
                Icon(Icons.add_circle),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.search_sharp),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.message),
              ],
              bottom: TabBar(indicatorColor: Colors.blue,
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home_filled),
                    ),
                    Tab(
                      icon: Icon(Icons.tv_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.people_alt_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.house),
                    ),
                    Tab(
                      icon: Icon(Icons.notifications_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.line_style),

                    ),



                  ],


                ),






              ),







            ],


          


        ),



      ),
    );
  }
}

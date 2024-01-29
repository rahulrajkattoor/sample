import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: vegetablesui(),
    debugShowCheckedModeBanner: false,
  ));
}

class vegetablesui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.green[500],
          title: Text(
            "FARMERS FRESH ZONE",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "Kochi",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
          bottom: AppBar(
            backgroundColor: Colors.green[500],
            title: Container(
              color: Colors.white,
              height: 40,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_sharp),
                    hintText: "Search for vegetables and fruits"),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: contentdetails(),
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      ),
    );
  }

  Widget contentdetails() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(height: 20,width: 30,),
              Text("VEGETABLES",style: TextStyle(color: Colors.green),),
              SizedBox(width: 110,),
              Text("FRUITS",style: TextStyle(color: Colors.green),),
              SizedBox(width: 100,),
              Text("EXOTIC CUTS",style: TextStyle(color: Colors.green),)
            ],
          ),
          CarouselSlider(
            items: [

              ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image(image: AssetImage("assets/icons/book img.png",))),
              ClipRRect(borderRadius: BorderRadius.circular(20),
                  child:Image(image: AssetImage("assets/icons/book img.png")))
            ], options: CarouselOptions(
            height: 300,
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),

          ),
          Container(
            child: Row(
              children: [
                SizedBox(height: 30,width: 68,),
                Icon(Icons.timer),
                SizedBox(width: 160,),
                Icon(Icons.account_box_outlined,),
                SizedBox(width: 150,),
                Icon(Icons.home_work_sharp)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(width: 40,),
                Text("30 min ploicy"),
                SizedBox(width: 105,),
                Text("Tracebility"),
                SizedBox(width: 80,),
                Text("Local Surrounding")
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child:Row(
              children: [
                SizedBox(width: 15,),
                Text("Shop by Category",style: TextStyle(fontSize: 20),)
              ],
            )
          ),
          Row(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Container(height: 200,width: 250,
                  child: Image(image: AssetImage("assets/icons/vegetables.jpg"),),
                ),
              ),
              ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Container(height: 200,width: 250,
                  child: Image(image: AssetImage("assets/icons/vegetable 1.png"),),
                ),
              )
            ],
          )

        

        ],
      ),
    );
  }
}

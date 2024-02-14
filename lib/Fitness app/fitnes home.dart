import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'fitnes diet page.dart';


void main() {
  runApp(MaterialApp(
    home: fitneshome(),
    debugShowCheckedModeBanner: false,
  ));
}

class fitneshome extends StatefulWidget {
  @override
  State<fitneshome> createState() => _fitneshomeState();
}

class _fitneshomeState extends State<fitneshome> {
 var index=0;
 var title=["Abs Workout","Arm Workout","Chest Workout","Leg Workout"];
 var image=["assets/icons/abs.jpg","assets/icons/arm.jpg","assets/icons/chest.jpg","assets/icons/leg.jpg"];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Workouts",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        child: Column(
          children: [

            CarouselSlider(
              items: [
                ClipRRect(borderRadius: BorderRadius.circular(15),
                  child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/top-view-arrangement-with-diet-planning-notepad.jpg"),fit: BoxFit.cover),
                  ),child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>neutritionpage()));
                    },
                  ),width: 400,),
                ),
                ClipRRect(borderRadius: BorderRadius.circular(15),
                  child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/full-shot-man-training-with-laptop.jpg"),fit: BoxFit.cover),
                  ),child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>neutritionpage()));
                    },
                  ),width: 400,),
                ),

              ],
              options:  CarouselOptions(
                height: 200,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10),
              ),
            ),
               SizedBox(height: 10,),

               Expanded(
                child: listview(),
              ),


          ],
        ),

      ),


        


      

    );
  }

  listview() {
    return ListView.builder(itemBuilder: (context,index){
      return ClipRRect(borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(200)),
                    child: Image(image: AssetImage(image[index]),fit: BoxFit.cover,height: 100,width: 200,))
              ],
            ),
        
        
          ),
        ),
      );
    },itemCount: 4,);
    
  }
}

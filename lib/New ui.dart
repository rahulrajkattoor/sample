import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: newui(),
  debugShowCheckedModeBanner: false,));
}
final List rooms=[
  {
    "image":"assets/icons/room 1.jpg",
    "title":"Awesome room near Kakkanad"
  },


];
class newui extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: CustomScrollView(slivers: [


             SliverAppBar(
               leading: Icon(Icons.menu),
               expandedHeight: 180,
               backgroundColor: Colors.blue,
               actions: [

                 Icon(Icons.favorite_border_outlined)
               ],
              floating: true,
               flexibleSpace: ListView(
                 children: [
                  SizedBox(height: 70,),
                   Text("Type your location",textAlign: TextAlign.center,style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 20.0,
                   ),),
                   Container(
                     margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                     padding: EdgeInsets.all(5),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(40)
                     ),
                     child: TextField(
                       decoration: InputDecoration(
                         hintText: "Kakkanad Kochi",
                         border: InputBorder.none,
                         icon: IconButton(onPressed: (){}, icon: Icon(Icons.search),)
                       ),
                     ),
                   ),

                 ],
               ),


             ),
          SliverToBoxAdapter(child: SizedBox(height: 15,width: 30,),),
         SliverToBoxAdapter(
           child: buildcategories(),
         ),
         SliverList(delegate: SliverChildBuilderDelegate((context,index){
           return buildrooms(context,index);

    },childCount: 10)









         )]));
  }

  buildcategories() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 15,),
          category(backgroundcolor: Colors.pink,icon: Icons.hotel, title: "Hotel"),
          SizedBox(width: 15,),
          category(backgroundcolor: Colors.blue
          ,icon:Icons.restaurant, title: "Restaurent"),
          SizedBox(width: 15,),
          category(backgroundcolor: Colors.amber,icon: Icons.local_cafe, title: "Cafe")
        ],
      ),
    );
  }

  Widget buildrooms(BuildContext context, int index) {
    var room=rooms[index % rooms.length];
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.greenAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children:[
                  Image.asset(room['image']),
              Positioned(right: 10,top: 10,

                  child: Icon(Icons.star,color: Colors.grey.shade800,size: 20,)),
              Positioned(bottom: 20,
                  right: 20,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Text("\$40"),
                  ))]),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(room['title'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text("Kakkanad Kochi"),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green,),
                        SizedBox(width: 5,),
                        Text("(220 reviews)",style: TextStyle(color: Colors.grey),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }

}
class category extends StatelessWidget{
  final IconData icon;
  final String title;
  final Color? backgroundcolor;
  const category({
    Key?key,
    required this.icon, required this.title, this.backgroundcolor,
}):super (key: key);
    
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(height: 5,),
            Text(title,style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }

}

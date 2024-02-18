import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: homepage3(),debugShowCheckedModeBanner: false,));
}
class homepage3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
      Stack(
      children: [
      Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
        child: Container(
          color: Colors.black12,
          height: 1000,
          width: 500,

        ),
      ),
    ),
        Padding(
          padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
          child: ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 200,width: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 200,top: 20),
                child: Column(
                  children: [
                    Text("The Giant kindom",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    Padding(
                      padding: const EdgeInsets.only(right: 50,top: 110),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("261",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 5,),
                          Text("remaining"),
                          SizedBox(width: 20,),
                          TextButton(
                              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                              onPressed: (){}, child: Text("Book it"))
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ),
          ),
        ),
        Padding(padding:EdgeInsets.only(top: 230,left: 10,right: 10),
          child:ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 200,width: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 200,top: 20),
                child: Column(
                  children: [
                    Text("Bear s Wish",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    Padding(
                      padding: const EdgeInsets.only(right: 50,top: 110),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("261",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 5,),
                          Text("remaining"),
                          SizedBox(width: 20,),
                          TextButton(
                              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                              onPressed: (){}, child: Text("Book it"))
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ),
          ),
        ),
        Padding(padding:EdgeInsets.only(top: 445,left: 10,right: 10),
          child:ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 200,width: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 200,top: 20),
                child: Column(
                  children: [
                    Text("Animal adventures",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    Padding(
                      padding: const EdgeInsets.only(right: 50,top: 110),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("261",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 5,),
                          Text("remaining"),
                          SizedBox(width: 20,),
                          TextButton(
                              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                              onPressed: (){}, child: Text("Book it"))
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ),
          ),
        ),
        Padding(padding:EdgeInsets.only(top: 660,left: 10,right: 10),
          child:ClipRRect(borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 200,width: 500,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 200,top: 20),
                child: Column(
                  children: [
                    Text("Growing story",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    Padding(
                      padding: const EdgeInsets.only(right: 50,top: 110),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("261",style: TextStyle(color: Colors.red),),
                          SizedBox(width: 5,),
                          Text("remaining"),
                          SizedBox(width: 20,),
                          TextButton(
                              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                              onPressed: (){}, child: Text("Book it"))
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 29,left: 20),
          child: ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Image(image: AssetImage("assets/icons/giant image.jpg"),height: 170,)),
        ),
        Padding(padding: EdgeInsets.only(top: 245,left: 20),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage("assets/icons/animal-wildlife-word-with-giraffe-graphic.jpg"),height: 170,))),
        Padding(padding: EdgeInsets.only(top: 475,left: 20),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage("assets/icons/2150991457.jpg"),height: 125,))),
        Padding(padding: EdgeInsets.only(top: 695,left: 20),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
                child: Image(image: AssetImage("assets/icons/2151158500.jpg"),height: 125,)))




      ],
      ),
    ]));
  }

}
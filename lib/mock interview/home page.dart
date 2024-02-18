import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ENJOY READING",
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "search for books",
                  suffixIcon: Icon(Icons.search_sharp),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icons/42152.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50,left: 15),
                    child: Text("Child picture Book",style: TextStyle(fontSize: 35),),
                  )
                ],
              ),
            ),
          ),
          Container(height: 100,
            child: Row(
              children: [Column(
                    children: [
                      SizedBox(height: 9,width: 80,),
                      Icon(Icons.book,color: Colors.yellow,size: 40,),
                      Text("Book List")
                    ],
                  ),
                Column(
                    children: [
                      SizedBox(width: 200,height: 9,),
                      Icon(Icons.heart_broken,color: Colors.yellow,size: 40,),
                      Text("Reading")
                    ],
                  ),
                Column(
                  children: [
                    SizedBox(height: 9,width: 90,),
                    Icon(Icons.sports_football,color: Colors.yellow,size: 40,),
                    Text("Space")
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 9,width: 130,),
                    Icon(Icons.more_horiz,color: Colors.yellow,size: 40,),
                    Text("More")
                  ],
                )

              ],
            ),
            
          ),
         Stack(
           children: [
             Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  child: Container(
                    color: Colors.black12,
                    height: 550,
                    width: 500,
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 500),
                     child: Row(
                        children: [
                          SizedBox(width: 30,),
                          Text("RECOMMENDED",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          SizedBox(width: 250,),
                          Text("see all")
                        ],
                      ),
                   ),
                  ),
                ),
              ),
             Padding(
               padding: const EdgeInsets.only(top: 80,left: 10,right: 10),
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
            Padding(padding:EdgeInsets.only(top: 330,left: 10,right: 10),
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
            Padding(
              padding: const EdgeInsets.only(top: 70,left: 15),
              child: ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image(image: AssetImage("assets/icons/giant image.jpg"),height: 210,)),
            ),
             Padding(padding: EdgeInsets.only(top: 320,left: 15),
             child: ClipRRect(borderRadius: BorderRadius.circular(20),
                 child: Image(image: AssetImage("assets/icons/animal-wildlife-word-with-giraffe-graphic.jpg"),height: 210,)))



           ],
         )
        ],


      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10),
                  child:Text("status",style: TextStyle(fontSize: 20),)),
              Padding(
                padding: const EdgeInsets.only(left: 350),
                child: PopupMenuButton(itemBuilder: (context){
                  return[
                    PopupMenuItem(child: Text("Show privacy"))
                  ];
                }),
              )
            ],

          ),
            Stack(
              children: [

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/indoor-picture-handsome guy.jpg"),radius: 27,
                  ),

                ),
                Positioned(
                  bottom: 13,
                    left: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                        radius: 10,
                        child: Icon(Icons.add,size: 20,))),
               Padding(padding:EdgeInsets.only(left: 80,top: 15),
                     child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My status",style: TextStyle(fontSize: 20),),
                    Text("Tap to add status update")
                  ],
                )
               ) ],
            ),

             Padding(
               padding: const EdgeInsets.all(10),
               child: Text("Recent updates"),
             ),
             ListTile(
               leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/RDJ.jpg"),radius: 27,),
               title: Text("Rdj"),
             ),
             SizedBox(height: 25,),
             ListTile(
               leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Custom-Icon-Design-Pretty-Office-2-Man.256.png"),radius: 27,),
               title: Text("Manager"),
             ),
             SizedBox(height: 25,),
             ListTile(
               leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Jack sparrow.jpg"),radius: 27,),
               title: Text("Jack sprrow"),
             ),
             SizedBox(
               height: 25,
             ),
             ListTile(
               leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Man-Fitness-Wallpaper-HD.jpg"),radius: 27,),
               title: Text("Alexander"),
             ),



             Padding(
               padding: const EdgeInsets.only(top: 30,left: 435),
               child: Stack(
                 children: [
                   ClipRRect(borderRadius: BorderRadius.circular(10),
                     child: Container(
                       color: Colors.black12,
                       width: 40,
                       child:
                         IconButton(onPressed: (){},icon: FaIcon(FontAwesomeIcons.pen),)
                       ),
                   ),
                   
                 ],
               ),
             ),



          ],
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){},child: Icon(Icons.camera_alt),),



    );
  }



}
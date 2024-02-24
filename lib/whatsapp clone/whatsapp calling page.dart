import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calling extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [
         Stack(
           children: [

             Padding(
               padding: const EdgeInsets.all(10),
               child: CircleAvatar(
                 backgroundImage: AssetImage("assets/icons/indoor-picture-handsome guy.jpg"),radius: 27,
               ),

             ),

             Padding(padding:EdgeInsets.only(left: 80,top: 15),
                 child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Create a call link",style: TextStyle(fontSize: 20),),
                     Text("Share a link for your Whatsapp call")
                   ],
                 )
             ),
           ],
         ),
        Padding(padding: EdgeInsets.all(10),
            child:Text("Recent")),
         SizedBox(height: 20,),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/RDJ.jpg"),radius: 27,),
           title: Text("Rdj"),
           subtitle: Text("February 18,7:36PM"),
           trailing: Icon(Icons.call),
         ),
         SizedBox(
           height: 25,
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/Jack sparrow.jpg"),radius: 27,),
           title: Text("Jack sparrow"),
           subtitle: Text("Yesterday,6:PM"),
           trailing: Icon(Icons.call),
         )

   ],

     ),
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.teal,
       onPressed: (){},
     child: Icon(Icons.phone),),
   );
  }

}
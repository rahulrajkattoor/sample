import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: assignment3(),
  debugShowCheckedModeBanner: false,));
}
class assignment3 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back_outlined),
              trailing: FaIcon(FontAwesomeIcons.list),
            ),
            Container(
              child:SizedBox(height: 100,width: 100,
                  child: CircleAvatar(backgroundImage: AssetImage("assets/icons/Jack sparrow.jpg"),)) ,


            ),
           Container(
             child: Row(
               children: [ SizedBox(height: 100,width: 120,),
                 CircleAvatar(backgroundImage: AssetImage("assets/icons/facebook.png"),),
                 SizedBox(width: 20,),
                 CircleAvatar(backgroundImage: AssetImage("assets/icons/Simpleicons-Team-Simple-Google.512.png"),),
                 SizedBox(width: 25,),
                 CircleAvatar(backgroundImage: AssetImage("assets/icons/Ampeross-Smooth-Twitter.512.png"),),
                 SizedBox(width: 25,),
                 CircleAvatar(backgroundImage: AssetImage("assets/icons/Danleech-Simple-Linkedin.512.png"),)
               ],

             ),


           ),
            Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Jack Sparrow",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 20),),
                Text("@amFoss",style: TextStyle(color: Colors.black,fontSize: 10),),
                Text("Mobile App Developer and open "
                    "\n source enthausiatics",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,)

              ],
            ),),
            SizedBox(height: 10,),
            Container(
              child: SingleChildScrollView(
                child:Column(
                  children: [
                    profiletile(text: "Privacy", icon:Icon(Icons.privacy_tip_outlined)),
                    profiletile(text: "Purchase History", icon:Icon(Icons.history)),
                    profiletile(text: "Help & Support", icon: Icon(Icons.help_outline_outlined)),
                    profiletile(text: "Settings", icon: Icon(Icons.settings)),
                    profiletile(text: "Invite a Friend", icon: Icon(Icons.person)),
                    profiletile(text: "Account", icon: Icon(Icons.account_box_outlined)),
                    profiletile(text: "Logout", icon: Icon(Icons.power_settings_new_outlined))


                  ],
                )
              ),
            )

   ] )));
  }

}
class profiletile extends StatelessWidget{
  const profiletile({Key?key,
    required this.text,
    required this.icon,

  });
final String text;
final Icon icon;


  @override
  Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.only(top: 10),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(40),
       color: Colors.grey[200]
     ),
     child: ListTile(
       title: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
       leading: icon,
       trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),

     ),
   );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: insta(),));
}
class insta extends StatefulWidget{
  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
   body: Container(child:Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Center(child: Image(image: AssetImage("assets/icons/instagram.png"),height: 100,width: 100,),
       ),
       Padding(
         padding: const EdgeInsets.only(right: 60,left: 60,top: 60,bottom: 20),
         child: TextField(decoration:InputDecoration(
           hintText: "username",
           labelText: "username",
         ))),
       Padding(
         padding: const EdgeInsets.only(right: 60,left: 60,top: 60,bottom: 20),
         child: TextField(
           obscureText: showpass,
           obscuringCharacter:'*' ,
           decoration: InputDecoration(
             suffixIcon: IconButton(onPressed: (){
               setState(() {
                 if(showpass){
                   showpass=false;
                 }
                 else{
                   showpass=true;
                 }

               });
             }, icon:Icon(showpass==true?Icons.visibility_off:Icons.visibility),

           ),
             hintText: "password",
             labelText: "password"
         ),
       ),),
       ElevatedButton(onPressed: (){}, child: Text("login"),style:ElevatedButton.styleFrom(foregroundColor: Colors.red)),
       TextButton(onPressed: (){}, child: Text("signup"))

     ],

   )),
   );
  }
}
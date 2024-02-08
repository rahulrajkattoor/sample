import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Fitness%20app/Login%20page.dart';

void main() {
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: start(),
          )));
}

class start extends StatefulWidget {

  @override
  State<start> createState() => _startState();

}

class _startState extends State<start> {
  GlobalKey<FormState>key=GlobalKey();
  bool showpass=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body:Stack(
       children: [
         Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/icons/Man-Fitness-Wallpaper-HD.jpg"),fit: BoxFit.cover)),),
         Container(color: Colors.white24,
           child: Form(key:key,
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 190),
                   child: Text("Register your account",style: TextStyle(color: Colors.white,fontSize: 20),),
                 ),

                 Padding(padding:EdgeInsets.only(top: 80,left: 60,right: 60),
                   child: TextFormField(style: TextStyle(color: Colors.white),
                     decoration: InputDecoration(
                         suffixIcon: Icon(Icons.person,color: Colors.white,),
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                         hintText: "Name",hintStyle: TextStyle(color: Colors.white),
                         labelText: "Name",labelStyle: TextStyle(color: Colors.white)
                     ),
                   ),),
                 Padding(padding:EdgeInsets.only(left: 60,right: 60,top: 40 ),
                   child: TextFormField(style: TextStyle(color: Colors.white),
                     decoration: InputDecoration(
                         suffixIcon: Icon(Icons.mail,color: Colors.white,),
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                         hintText: "Email",hintStyle: TextStyle(color: Colors.white),
                         labelText: "Email",labelStyle: TextStyle(color: Colors.white)
                     ),
                     validator: (username){
                       if(username!.isEmpty||!username.contains("@")||!username.contains(".")){
                         return "enter valid mail";
                       }
                       else
                       {
                         return null;
                       }
                     },
                   ),),
                 Padding(
                     padding: const EdgeInsets.only(
                         right: 60, left: 60,top: 20),
                     child: TextFormField(style: TextStyle(color: Colors.white),
                       obscureText: showpass,
                       obscuringCharacter: "*",
                       decoration: InputDecoration(

                           suffixIcon:IconButton(onPressed: () {
                             setState(() {
                               if(showpass){
                                 showpass=false;
                               }
                               else{
                                 showpass=true;
                               }
                             });
                           },icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility,color: Colors.white,),


                           ),
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                           hintText: "Password",hintStyle: TextStyle(color: Colors.white),
                           labelText: "Password",labelStyle: TextStyle(color: Colors.white)
                       ),
                       validator:  (password){
                         if(password!.isEmpty||password.length<8){
                           return "enter valid passwod";
                         }
                         else{
                           return null;
                         }
                       },



                     )),
                 SizedBox(height: 30,),
                 ElevatedButton(
                   onPressed: () {
                     final valid = key.currentState!.validate();
                     if (valid) {
                       Navigator.push(
                           context, MaterialPageRoute(builder: (context) =>loginpage()));
                     }
                   }, child:Text("Register",),

                 ),
                 SizedBox(height: 5,),
                 TextButton(
                     onPressed: (){
                       Navigator.push(
                           context, MaterialPageRoute(builder: (context) =>loginpage()));

                     }, child: Text("Login your account",style: TextStyle(color: Colors.white),))


               ],




             ),
           ),

         ),
       ],
     )
    );
  }
}

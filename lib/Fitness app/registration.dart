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

     body: Container(color: Colors.white10,
       child: Form(key:key,
         child: Column(
           children: [

            Padding(padding:EdgeInsets.only(top: 250,left: 40,right: 40),
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.person),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                hintText: "Name",
                labelText: "Name"
              ),
            ),),
             Padding(padding:EdgeInsets.only(left: 40,right: 40,top: 40 ),
               child: TextFormField(
                 decoration: InputDecoration(
                     suffixIcon: Icon(Icons.mail),
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                     hintText: "Email",
                     labelText: "Email"
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
                 right: 40, left: 40,top: 40),
               child: TextFormField(
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
                     },icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility),


               ),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                   hintText: "Password",
                   labelText: "Password"
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
           SizedBox(height: 50,),
           ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

             onPressed: () {
             final valid = key.currentState!.validate();
             if (valid) {
               Navigator.push(
                   context, MaterialPageRoute(builder: (context) =>loginpage()));
             }
           }, child:Text("Register",style: TextStyle(color: Colors.white,),),

           ),
             SizedBox(height: 30,),
             ElevatedButton(
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                 onPressed: (){
                   Navigator.push(
                       context, MaterialPageRoute(builder: (context) =>loginpage()));

             }, child: Text("Login",style: TextStyle(color: Colors.white),))


           ],




         ),
       ),

     ),
    );
  }
}

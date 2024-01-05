import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/homescreen.dart';

void main() {
  runApp(MaterialApp(
    home: phone(),
    debugShowCheckedModeBanner: false,
  ));
}

class phone extends StatefulWidget {
  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {
  GlobalKey<FormState>key=GlobalKey();
  bool pass = true;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.yellow, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),

       child: Column(
         key: key,
         children: [
           SizedBox(height: 50,
           width: 50,),
           Center(
             child: Image(image: AssetImage("assets/icons/Iconarchive-Dog-Breed-Golden-Retriever.512.png"),
             height: 100,
             width: 100,),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 60,right: 60,top: 60,
             bottom: 20),
             child: TextFormField(
               decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                 ),
                 hintText: "username",
                 labelText: "username",
               ),
               validator: (username){
                if (username!.isEmpty||username.length<8){
                  return "not available";
                }
               },
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 60,top: 60,right: 60,
             bottom: 20),
             child: TextFormField(
               obscureText: pass,
               obscuringCharacter: '*',
               decoration: InputDecoration(prefixIcon: Icon(Icons.password,),
                   suffixIcon: IconButton(onPressed: (){
                     setState(() {
                       if(pass){
                         pass=false;
                       }
                       else{
                         pass=true;
                       }
                     });
                   }, icon: Icon(pass==true?Icons.visibility_off:Icons.visibility),),
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                 ),
                 hintText: "password",
                 labelText: "password",
             ),
               validator: (password){
                if (password!.isEmpty||!password.contains('@')||!password.contains('.')){
                  return "invalid";
                }

               },
           )),
           ElevatedButton(onPressed: (){
             final valid=key.currentState!.validate();
            if (valid) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homescreen()));
            }
           }, child: Text("login"),
           )
         ],
       ),

      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Login(),debugShowCheckedModeBanner: false,));
}

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 50,),
          Image(image: AssetImage("assets/SVG/img3.jpg"),height: 200,),

          Padding(
            padding: const EdgeInsets.only(left: 30,),
            child: Text("Enter Phone Number",style: TextStyle(fontWeight: FontWeight.w800),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),hintText: "Enter phone number"),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                onPressed: (){}, child: Text("Get OTP",style: TextStyle(color: Colors.white),)),
          )

        ],
      ),
    );
  }

}
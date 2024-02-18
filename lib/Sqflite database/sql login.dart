import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Sqflite%20database/sql%20admin%20home.dart';
import 'package:sample/Sqflite%20database/SQL%20helper.dart';
import 'package:sample/Sqflite%20database/user%20home%20page.dart';

import 'Registration page.dart';

class sqllogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _sqlloginState();
}

class _sqlloginState extends State<sqllogin>{
  GlobalKey<FormState>key=GlobalKey();
  final email=TextEditingController();
  final password=TextEditingController();
  void logincheck(String username,String password) async{
    if(username=='rahulraj@gmail.com'&&password=='12345678'){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>adminhome()));
    }
    else{
      var data=await sqlHelper.checklogin(username,password);
        if(data.isNotEmpty){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>userhome(data: data)));

        }
        else{
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));

        }

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Form(key: key,
      child: Column(
        children: [
        SizedBox(height: 50,),
      TextFormField(
        validator: (Email){
          if(Email!.isEmpty&&!Email.contains('@')&&!Email.contains('.')){
            return "enter valid mail";
          }
        },
        controller: email,
        decoration: InputDecoration(border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),),
            hintText: 'Email'
        ),
      ),
      SizedBox(height: 20,),
      TextFormField(
        validator: (password) {
          if (password!.isEmpty || password.length < 8) {
            return "enter valid passwod";
          } else {
            return null;
          }
        },
        controller: password,
        decoration: InputDecoration(border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),),
            hintText: 'Password'
        ),
      ),
          ElevatedButton(onPressed: (){
            final valid=key.currentState!.validate();
            if(valid){
              logincheck(email.text,password.text  );
            }
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
          }, child: Text("Login"))
      ]
    ))));
  }

}

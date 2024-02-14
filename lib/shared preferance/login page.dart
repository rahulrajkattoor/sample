import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home page.dart';
void main(){
  runApp(MaterialApp(home: login(),));
}
class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  late SharedPreferences data;
  late bool newuser;
  @override
  void initState(){
    checkuser();
    super.initState();

  }
  void checkuser()async{
    data=await SharedPreferences.getInstance();
    newuser=(data.getBool('newuser')??true);
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedhome()));
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150,left: 60,right: 60),
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(
                hintText: "username",
                labelText: "username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 40),
            child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                  hintText: "password",
                  labelText: "password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))

              ),
            ),
          ),
          SizedBox(height: 40,),
          ElevatedButton(
              onPressed: (){
                String uname=username.text;
                String pass=password.text;
                if(uname!=''&&pass!=''){
                  print('Login succesfull');
                  data.setString("username", uname);
                  data.setBool('newuser', false);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>sharedhome()));

                }
              }, child: Text("Login"))
        ],
        )
      ),

    );
  }
}
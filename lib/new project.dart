import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/new%20home%20project.dart';
import 'package:sample/new%20registration%20project.dart';
void main(){
  runApp(MaterialApp(home: login(),
  debugShowCheckedModeBanner: false,));
}
class login extends StatefulWidget{
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool pass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page",style: TextStyle(color: Colors.blue),),),
      body: Container(
        child: Form(key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60,right: 60,top: 60,bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                    hintText: "username",
                    labelText: "username",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),



                  ),
                  validator: (username){
                    if(username!.isEmpty||!username.contains('@')||!username.contains('.')){
                      return "enter valid username";
                    }
                    else{
                      return null;
                    }
                  },



                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 60,right: 60,top: 60,
                bottom: 20),
                child: TextFormField(
                  obscureText: pass,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(prefixIcon: Icon(Icons.password),
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                  labelText: "password",
                  ),
                  validator: (password){
                    if(password!.isEmpty||password.length<8){
                      return "enter valid password";
                    }
                    else{
                      null;
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
                final validate=formkey.currentState!.validate();
                if(validate){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>newhome()));
                }
              }, child: Text("Login")),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>newregistration()));
              }, child: Text("Registration"))
            ],
          ),
        ),
      ),
    );
  }
}
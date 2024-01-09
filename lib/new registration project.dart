import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/new%20project.dart';

class newregistration extends StatefulWidget{
  @override
  State<newregistration> createState() => _newregistrationState();
}

class _newregistrationState extends State<newregistration> {
  GlobalKey<FormState>key1=GlobalKey();
  bool pass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Registration page",style: TextStyle(color: Colors.blue),),),
      body: Container(child: Form(key: key1,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                hintText: "username",
                labelText: "username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
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
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20,
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
              final valid=key1.currentState!.validate();
              if(valid){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
              }
            }, child: Text("Register"))
          ],
        ),
      ),),
    );
  }
}
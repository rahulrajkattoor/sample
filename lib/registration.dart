import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/homescreen.dart';
void main()
{
  runApp(MaterialApp(home: registration(),));
}
class registration extends StatefulWidget{
  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  GlobalKey<FormState>key=GlobalKey();
  bool pass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Form(
        key: key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 60,left: 60,bottom: 20,top: 60),
              child: TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "name",
                    labelText: "name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60,left: 60,bottom: 20,top: 60),
              child: TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                hintText: "username",
                labelText: "username"),
                validator: (username){
                  if(username!.isEmpty||!username.contains("@")||!username.contains(".")){
                    return "enter a valid mail";
                  }
                  else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60,left: 60,top: 60,bottom: 20),
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

                  }, icon:Icon(pass==true?Icons.visibility_off:Icons.visibility),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                  labelText: "password"

                ),
                validator: (pass){
                  if(pass!.isEmpty||pass.length<8){
                    return "enter a valid password";

                  }
                  else
                    {
                      return null;
                    }
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              final data=key.currentState!.validate();
              if(data){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));

              }
            }, child: Text("register"))

          ],
        ),
      ),),
    );
  }
}
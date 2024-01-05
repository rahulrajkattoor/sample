import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/homescreen.dart';
import 'package:sample/registration.dart';

void main() {
  runApp(MaterialApp(
    home: app(),
  ));
}

class app extends StatefulWidget {
  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  GlobalKey<FormState>forkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Form(
          key: forkey,
          child: Column(
            
            children: [
              Center(
                  child: Image(
                image: AssetImage(
                    "assets/icons/Iconarchive-Dog-Breed-Golden-Retriever.512.png"),
                height: 200,
                width: 200,
              )),
              Padding(
                padding: const EdgeInsets.only(
                    right: 60, left: 60, top: 60, bottom: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "username",
                      labelText: "username"),
                  validator:(username){
                    if(username!.isEmpty||!username.contains("@")||!username.contains(".")){
                      return "enter valid mail";
                    }
                    else{
                      return  null;
                    }

                  }
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 60, left: 60, bottom: 20, top: 60),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
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
                      ),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                  labelText: "password"),
                  validator: (password){
                    if(password!.isEmpty||password.length<8){
                      return "enter valid passwod";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
                final valid=forkey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
                }
              }, child:Text("login"),style:ElevatedButton.styleFrom(foregroundColor: Colors.blue)),
              TextButton(onPressed: () {{

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>registration()));

                }
              }, child: Text("Register account"))
            ],
          ),
        ),
      ),
    );
  }
}

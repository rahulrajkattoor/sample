import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sample/Fitness%20app/Home%20page.dart';
void main(){
  runApp(MaterialApp(home: loginpage(),));
}
class loginpage extends StatefulWidget{
  @override
  State<loginpage> createState() => _loginpageState();

}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState>key=GlobalKey();
  bool showpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(key: key,
          child: Column(
            children: [
              Padding(padding:EdgeInsets.only(left: 40,right: 40,top: 250 ),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
              SizedBox(height: 40,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                final valid = key.currentState!.validate();
                if (valid) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>homepage()));
                }
              },
                  child: Text("Login"))

            ],
          ),
        ),
      ),

    );
  }
}
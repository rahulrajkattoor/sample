import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/call.dart';

import 'package:sample/registration.dart';

void main() {
  runApp(MaterialApp(
    home: web(),
    debugShowCheckedModeBanner: false,
  ));
}

class web extends StatefulWidget {
  @override
  State<web> createState() => _webState();
}

class _webState extends State<web> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 60, left: 60, top: 60, bottom: 60),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "username",
                        labelText: "username"),
                    validator: (username) {
                      if (username!.isEmpty || username.length < 8) {
                        return "enter valid username";
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 60, left: 60, top: 60, bottom: 20),
                child: TextFormField(
                  obscureText: pass,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (pass) {
                              pass = false;
                            } else {
                              pass = true;
                            }
                          });
                        },
                        icon: Icon(pass == true
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "password",
                      labelText: "password"),
                  validator: (password) {
                    if (password!.isEmpty ||
                        !password.contains('@') ||
                        !password.contains('.')) {
                      return "enter valid password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final form = formkey.currentState!.validate();
                    if (form) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => call()));
                    }
                  },
                  child: Text("Login")),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>registration()));
              }, child: Text("register"))
            ],
          ),
        ),
      ),
    );
  }
}

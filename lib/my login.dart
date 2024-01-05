import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: myui(),
  ));
}

class myui extends StatefulWidget {
  @override
  State<myui> createState() => _myuiState();
}

class _myuiState extends State<myui> {
  GlobalKey<FormState>mykey=GlobalKey();
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Form(
            key: mykey,
            child: Column(
                    children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 60, right: 60, top: 60, bottom: 60),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "name",
                    labelText: "name"),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 60, left: 60, top: 60, bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "username",
                    labelText: "username"),
                validator: (username){
                  if(username!.isEmpty||!username.contains("@")||!username.contains(".")){
                    return "enter valid mail";
                  }
                  return null;
                },
              ),
            ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60,top: 60,right: 60,bottom: 20),
                        child: TextFormField(
                          decoration: InputDecoration(prefixIcon: Icon(Icons.password),
                          suffixIcon: IconButton(onPressed: (){}
                          ),

                          ),
                        ),
                      )
                    ],
                  ),
          )),
    );
  }
}

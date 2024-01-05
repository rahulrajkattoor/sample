import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: eg(),
  ));
}

class eg extends StatefulWidget {
  @override
  State<eg> createState() => egState();
}

class egState extends State<eg> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Login page",
              style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 50,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, bottom: 20, top: 60),
              child: TextField(

                decoration: InputDecoration(suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "username",
                    labelText: "name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, bottom: 20, top: 60),
              child: TextField(
                obscureText: showpass,
                obscuringCharacter: '*',
                decoration: InputDecoration(prefixIcon:Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      if(showpass){
                       showpass=false;
                      }
                      else{
                        showpass=true;
                      }

                    });
                  }, icon: Icon(showpass==true?Icons.visibility_off:Icons.visibility),),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "password",
                  labelText: "password",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("login"),style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.blue),

            ),
            TextButton(onPressed: () {}, child: Text("invalid account")),
          ],
        ),
      ),
    );
  }
}

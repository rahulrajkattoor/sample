import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Fitness%20app/fitnes%20home.dart';
import 'package:sample/Fitness%20app/registration.dart';

void main() {
  runApp(MaterialApp(
    home: loginpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState> key = GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/Man-Fitness-Wallpaper-HD.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.white24,
          child: Form(
            key: key,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Text(
                      "Login your account",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 60, right: 60, top: 60),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains("@") ||
                          !username.contains(".")) {
                        return "enter valid mail";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 60, left: 60, bottom: 20, top: 60),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        iconColor: Colors.white,
                        suffixIcon: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "password",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "password",
                        labelStyle: TextStyle(color: Colors.white)),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 8) {
                        return "enter valid passwod";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      final valid = key.currentState!.validate();
                      if (valid) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => fitneshome()));
                      }
                    },
                    child: Text("Login")),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => start()));
                    },
                    child: Text(
                      "Create a new account",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}

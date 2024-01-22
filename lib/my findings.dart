import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ui(),
  debugShowCheckedModeBanner: false,));
}
class ui extends StatefulWidget{
  @override
  State<ui> createState() => _uiState();
}

class _uiState extends State<ui> {
 @override



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: Card(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 100,left: 60,right: 60),
              child: TextField(
                cursorColor: Colors.yellow,

                decoration: InputDecoration(prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    hintText: "Search everything"),


              ),),

            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){

                print("pressed");
              }, child: Text("Login")),
            )

          ],
        ),
      ),
    );
  }
}
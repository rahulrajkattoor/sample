import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: example(),
  ));
}

class example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(width: 500,
            
            color: Colors.tealAccent,
            child: ListView(
              children: [
                Text("Riofamily",style: TextStyle(color: Colors.black),)
              ],
            )
            
            ),
          
          Container(
            color: Colors.blue,
            height: 200,
          ),
          Positioned(
            child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Center(
                child: Container(
                  color: Colors.purpleAccent,
                        child: Image(
                          image: AssetImage(
                              "assets/icons/Designbolts-Rio-2-Movie-Rio2-Family.512.png"),
                        ),
                  
                      ),
                    
                  
                    
                  ),
                ),
            
            
            bottom: 405,
            width: 100,
            top: 150,
            left: 180,
          )
        ],
      ),
    );
  }
}

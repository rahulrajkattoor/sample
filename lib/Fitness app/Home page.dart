import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: homepage(),
  debugShowCheckedModeBanner: false,));
}
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Be Fit",style: GoogleFonts.abrilFatface(),),),


    );
  }

}
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HeroAnim(),debugShowCheckedModeBanner: false,));
}

class HeroAnim extends StatelessWidget{
  double timeDilation = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation"),),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
            },
            child: Hero(
              tag: 'background',
              child: Image(image: AssetImage("assets/icons/room 1.jpg"),height: 100,width: 150,),
            ),

          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"),),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image(image: AssetImage("assets/icons/room 1.jpg"),),
        ),
      ),
    );
  }

}
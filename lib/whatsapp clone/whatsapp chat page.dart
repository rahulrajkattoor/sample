import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: chatpage(),));
}
class chatpage extends StatelessWidget{
  var name=["Rahul","Team padi"];
  var image=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Container(height: 50,
          child: ListTile(
            title: Text(name[index]),
            leading: Image(image: AssetImage(image[index]),)

          ),
        );
      },itemCount: 2,),
    );
  }

}
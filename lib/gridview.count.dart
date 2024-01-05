import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: grid(),));
}
class grid extends StatelessWidget{
  var icon=[Icons.add_card,Icons.backup,Icons.person];
  var color=[Colors.blue,Colors.green,Colors.deepPurple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: (
      List.generate(3, (index){
        return Card(color: color[index],
          child: Column(
            children: [
              SizedBox(height: 75,),
              Icon(icon[index]),
              Text("flutter")
            ],
          ),
        );
      })
      ),),

    );
  }

}
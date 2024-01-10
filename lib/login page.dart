import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: myui(),
    debugShowCheckedModeBanner: false,
  ));
}

class myui extends StatelessWidget {
  var name=["rahul","rajesh","athul","rajeev"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(itemBuilder: (context,index){
      return Container(
        child: Column(
          children: [
            ListTile(
              leading: TextButton(onPressed: (){},child: Text("Delete"),),
              title: Text(name[index]),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(onPressed: (){}, child: Text("Add")),

                ],
              ),
            )

          ],
        ),
      );
    },itemCount: name.length,),


    );
  }
}

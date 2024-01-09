import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(home: grid(),));
}
class grid extends StatelessWidget {
  var image=["assets/icons/facebook.png",
    "assets/icons/facebook.png",
    "assets/icons/facebook.png",
    "assets/icons/facebook.png"];
  var title=["1",
    "2",
    "3",
    "4"];
  var price=["100","200","300","400"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
          childrenDelegate: SliverChildListDelegate(List.generate(4, (index){
            return Card(
              child: Column(
                children: [
                  SizedBox(height: 50,
                  width: 500,),
                  Image(image: AssetImage(image[index])),
                  Text("${title[index]}"),
                  Text("${price[index]}")

                ],
              ),

              
            );
          }))),
    );
  }
}
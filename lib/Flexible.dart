import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: flexible(),));
}
class flexible extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Flexible(flex: 1,
                  child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),),
                ),
                Flexible(flex: 1,
                  child: Container(height: 150,width: 150,
                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}
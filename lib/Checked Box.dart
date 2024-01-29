import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: checkedbox(),));
}
class checkedbox extends StatefulWidget{
  @override
  State<checkedbox> createState() => _checkedboxState();
}

class _checkedboxState extends State<checkedbox> {
bool ischecked=false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Checkbox(value: ischecked,
         checkColor: Colors.white,
         
         activeColor: Colors.redAccent,
         onChanged: (bool? value) {
         setState(() {
           if(ischecked){
             ischecked=false;
           }
           else{
             ischecked=true;
           }
         });
       },

       ),
     );
  }
}
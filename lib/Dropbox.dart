import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>
  runApp(MaterialApp(home: drop(),));

List<String>list=['one','two','three','four'];
class drop extends StatefulWidget{
  const drop({super.key});

  @override
  State<drop> createState() => _dropState();
}

class _dropState extends State<drop> {
  String dropdownvalue=list.first;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body:DropdownButton<String>(
         value: dropdownvalue,
         icon: Icon(Icons.arrow_downward),
         elevation: 2,
         style: TextStyle(color: Colors.deepPurple),
         underline: Container(
           height: 2,
           color: Colors.deepPurpleAccent,
         ),
          onChanged: (String? value) {
           setState(() {
             dropdownvalue=value!;
           });
          },
         items: list.map<DropdownMenuItem<String>>((String drop){
           return DropdownMenuItem(
             value: dropdownvalue,
               child: Text(drop));
         }).toList(),

       ));
  }
}


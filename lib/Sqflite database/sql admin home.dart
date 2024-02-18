

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Sqflite%20database/SQL%20helper.dart';

class adminhome extends StatefulWidget{
  @override
  State<adminhome> createState() => _adminhomeState();
}

class _adminhomeState extends State<adminhome> {
  var data;
  void delete(int id)async{
    await sqlHelper.deleteuser(id);
    refresh();
  }
  @override
  void initState(){
    refresh();
    super.initState();
  }
  void refresh()async{
    var mydata=await sqlHelper.getAll();
    setState(() {
      data=mydata;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index){
        return Column(
          children:[ Card(
            child: ListTile(
              title: Text('${data[index]['name']}'),
              trailing: IconButton(onPressed: (){
                delete(data[index]['id']);
              },icon:Icon(Icons.delete) ,),
            ),
          ),
            
        ]);
      },),
    );
  }
}
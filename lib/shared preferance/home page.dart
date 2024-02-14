import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/new%20project.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedhome extends StatefulWidget{
  @override
  State<sharedhome> createState() => _sharedhomeState();
}

class _sharedhomeState extends State<sharedhome> {
  late SharedPreferences data;
  late String username;
  @override
  void initState(){
    fetch();
    super.initState();
  }
  void fetch()async{
    data=await SharedPreferences.getInstance();
    setState(() {
      username=data.getString('username')!;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Hi welcome $username',style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){
              data.setBool('newuser', true);
              Navigator.push(context,MaterialPageRoute(builder:(context)=>login()));
            }, child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}


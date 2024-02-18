import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userhome extends StatelessWidget {
  @override
  final data;
  userhome({
    Key?key,
    required this.data});
  Widget build(BuildContext context) {
    var email=data[0]['email'];
    var password=data[0]['password'];
    return Scaffold(
      appBar: AppBar(title: Text("$email"),),
      body: Center(
        child: Text("$password"),
      ),
    );
  }
}
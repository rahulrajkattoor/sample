import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'desktop.dart';
import 'mobile body.dart';
void main(){
  runApp(MaterialApp(home: homepage(),));
}

class homepage extends StatefulWidget{
  const homepage({Key?key}):super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
     var devicewidth=MediaQuery.of(context).size.width;
     if(devicewidth<600){
       return Mymobilebody();
     }else{
       return Mydesktopbody();
     }
  }
}


import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }));
}

class Home extends StatelessWidget {
  var size,height,width;

  @override
  Widget build(BuildContext context) {

    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Application"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.yellow,
        height: height/2,//half of the height size
        width: width/2,//half of the width size
      ),
    );
  }
}
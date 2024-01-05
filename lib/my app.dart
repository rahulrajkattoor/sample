import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) =>
          MaterialApp(
              useInheritedMediaQuery: true,
              debugShowCheckedModeBanner: true,
              home: myapp())));
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(foregroundColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          title: Text("MYAPP"),),
        body: Container(height: double.infinity, width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.yellow,
                      Colors.red,
                      Colors.transparent
                    ], begin: Alignment.centerRight,
                    end: Alignment.bottomCenter)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Icon(Icons.ac_unit_sharp, size: 100, color: Colors.yellow,)),
                Center(
                  child: Text(
                      "FLUTTTER",


                  ),
                )
              ],
            )
        )


    );
  }
}

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: true,
          home: facebook())));
}

class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("APP") ,
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        color: Colors.cyanAccent,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.amber,
            Colors.yellowAccent,
            Colors.green,
            Colors.yellowAccent
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomRight,

        )),
      ),
    );
  }
}

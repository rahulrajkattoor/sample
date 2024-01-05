import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) =>
          MaterialApp(
              useInheritedMediaQuery: true,
              debugShowCheckedModeBanner: true,
              home: app())));
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.cyan,
      backgroundColor: Colors.red,
      title: Text("APP"),),
      body: Container(height: double.infinity,width: double.infinity,
      color: Colors.limeAccent,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


          Image(image: AssetImage("assets/icons/facebook.png"),height: 100,width: 100,),
          Text("MYAPP",style: TextStyle(color: Colors.teal,fontSize: 100,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),)
        ],
      ),)
    );
  }

}
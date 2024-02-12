import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/Fitness%20app/Login%20page.dart';
void main(){
  runApp(DevicePreview(
    isToolbarVisible: true,
      builder: (BuildContext context)=>MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: splash(),
      )));
}
class splash extends StatefulWidget{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>loginpage()));
    });
  }
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays:SystemUiOverlay.values);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100,width: 300,),
            Center(child: ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Image(image: AssetImage("assets/SVG/3663875.jpg"),width: 300,))),
            SizedBox(height: 20,),
            Text("Its time to change",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
            SizedBox(height: 60,),
            
          ],
        ),
      ),
    );
  }
}
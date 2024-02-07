import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/dummy%20products/list%20of%20product.dart';


import 'Fitness app/Login page.dart';
import 'dummy products/productdetails.dart';


// void main(){
//   runApp(DevicePreview(
//       isToolbarVisible: true,
//       builder: (BuildContext context)=>MaterialApp(
//         useInheritedMediaQuery: true,
//         debugShowCheckedModeBanner: false,
//         home: splash1(),
//       )));
// }
class splash1 extends StatefulWidget{
  @override
  State<splash1> createState() => _splashState();
}

class _splashState extends State<splash1> {
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
            Center(child: Image(image: AssetImage("assets/SVG/splash screen image.png"),width: 300,)),
            SizedBox(height: 20,),
            Text("Its time to change",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
            SizedBox(height: 60,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red,),

                onPressed: (){}, child: Text("Start ",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}

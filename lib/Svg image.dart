import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main(){
  runApp(MaterialApp(home: svg(),));
}
class svg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: IconButton(
          onPressed: (){}, icon: SvgPicture.asset('assets/SVG/website-design-brisbane-shortie-designs.svg'),
        ),
      ),
    );
  }

}
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: TweenAnimation(),debugShowCheckedModeBanner: false,));
}
class TweenAnimation extends StatefulWidget
{
  @override
  TweenAnimationState createState() => TweenAnimationState();
}
class TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin
{
  late AnimationController controller;
  late Animation sizeAnimation;
  late Animation colorAnimation;
  late Animation rectAnimation;

  @override
  void initState()
  {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 5), vsync: this,)..repeat();
    sizeAnimation = Tween(begin: 100.0, end: 10.0,).animate(controller);
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.purple,).animate(controller);
    rectAnimation = RectTween(begin: Rect.fromLTWH(0, 0, 100, 100), end: Rect.fromLTWH(450, 200, 10, 10),).animate(controller);
  }
  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children:
      [
        AnimatedBuilder(animation: controller,builder: (context, child)
        {
          return Positioned.fromRect(rect: rectAnimation.value, child: Container(width: sizeAnimation.value, height: sizeAnimation.value, color: colorAnimation.value,),);
        },),
      ],);
  }
  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }
}
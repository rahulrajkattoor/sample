import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sample/Provider/using%20get/controller.dart';
void main(){
  runApp(GetMaterialApp(home: app(),));
}
class app extends StatelessWidget{
  app({super.key});
  @override
  Widget build(BuildContext context) {
    final CountController controller=Get.put(CountController());
    return Scaffold(backgroundColor: Colors.red,
      appBar: AppBar(title: Text("counter example"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Text("count =${controller.count}")),
            ElevatedButton(onPressed: ()=>controller.increment()
                , child: Text("increment")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()=>controller.decrement(), child: Text("decrement"))
          ],
        ),
      ),
    );
  }

}
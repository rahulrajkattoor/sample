
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sample/Getx%20counter/presentation/user%20page.dart';


import '../../Provider/using get/controller.dart';
import '../Controlers/theme controller.dart';
import '../constants/theme.dart';

class SimpleHomePage extends StatelessWidget {
  SimpleHomePage({Key? key}) : super(key: key);
  final themeController = Get.find<ThemeController>();
  final CountController controller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple State Management'),
        actions: [
          IconButton(
            onPressed: () {
              if (Get.isDarkMode) {
                themeController.changeTheme(Themes.lightTheme);
                themeController.saveTheme(false);
              } else {
                themeController.changeTheme(Themes.darkTheme);
                themeController.saveTheme(true);
              }
            },
            icon: Get.isDarkMode
                ? const Icon(Icons.light_mode_outlined)
                : const Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 40.0,
            ),
            GetBuilder<CountController>(
              //init: CountController(),
                builder: (counter) {
                  return Text(
                    counter.simpleCount.toString(),
                    style: const TextStyle(fontSize: 38),
                  );
                }),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  child: const Icon(Icons.remove),
                  onPressed: () {
                    //CountController.to.simpleIncrement();
                    controller.singleDecrement();
                  },
                  tooltip: 'decrement',
                ),
                FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    //CountController.to.simpleDecrement();
                    controller.simpleIncrement();
                  },
                  tooltip: 'increment',
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () => Get.to(UserPage()),
              child: const Text('User Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
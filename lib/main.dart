import 'package:flutter/material.dart';
import 'package:timer/timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TimerController());
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const HomePage());
  }
}

// Home Page
class HomePage extends GetView<TimerController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 100,
        width: 200,
        decoration: ShapeDecoration(
            color: Theme.of(context).primaryColor,
            shape:
                StadiumBorder(side: BorderSide(width: 2, color: Colors.red))),
        child: Obx(() => Center(
              child: Text(
                '${controller.time.value}',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            )),
      ),
    ));
  }
}

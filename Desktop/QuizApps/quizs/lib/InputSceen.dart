import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class Inputsceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        backgroundColor: Colors.blue,
        title: Text("Quiz App",
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            )),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/result');
              },
              child: Text("Next",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  )))
        ],
      ),
    )));
  }
}

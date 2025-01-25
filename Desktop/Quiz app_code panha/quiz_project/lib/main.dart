import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_project/code_kru.dart';
import 'package:quiz_project/quiz.dart';
import 'package:quiz_project/screen.dart';

import 'result.dart';

void main() {
  Get.put(MyState());
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/screen', page: () => Screen()),
      GetPage(name: '/Quiz', page: () => Quiz()),
      GetPage(name: '/Result', page: () => Result()),
    ],
    initialRoute: '/screen',
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizs/InputSceen.dart';
import 'package:quizs/controller.dart';
import 'package:quizs/home.dart';
import 'package:quizs/result.dart';

void main() {
  Get.put(Controller());
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/quiz', page: () => Home()),
      GetPage(name: "/EnterSceen", page: () => Inputsceen()),
      GetPage(name: '/result', page: () => Result())
    ],
    initialRoute: '/quiz',
  ));
}
